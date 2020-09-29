package main

import (
	"github.com/coreos/etcd/clientv3"
	"github.com/shiningacg/filestore/cluster"
	"github.com/shiningacg/filestore/cluster/follower"
	"github.com/shiningacg/filestore/gateway/checker"
	"github.com/shiningacg/filestore/store/ipfs"
	"github.com/shiningacg/filestore/store/remote"
)

const (
	CheckerAddr = "127.0.0.1:8000"
	GatewayAddr = "0.0.0.0:8001"
	GrpcAddr    = "0.0.0.0:8002"
)

var Data = cluster.Data{
	MetaData: cluster.MetaData{
		Id:      "test",
		Host:    []string{"127.0.0.1:"},
		Tag:     "",
		Weight:  0,
		Version: 0,
	},
	GatewayAddr: "",
	Entry:       false,
	Exit:        false,
	Cap:         0,
}

var Service = cluster.Service{
	Name: "svc.file",
	Id:   "test",
	TTL:  3,
}

// ipfs store
func main() {
	// 创建checker
	ck, err := checker.NewGrpcChecker(CheckerAddr, "")
	if err != nil {
		panic(err)
	}
	// 创建store
	store, err := ipfs.NewStore(GatewayAddr, ck, nil)
	if err != nil {
		panic(err)
	}
	// 创建adder
	adder := remote.MockAdder{}
	// 启动grpc服务
	remote.NewStoreGRPCServer(GrpcAddr, adder, store)
	// 连接集群
	etcd := ConnectEtcd()
	//
	app := follower.NewFollower(etcd, Data, Service)
	app.Run()
}

func ConnectEtcd() *clientv3.Client {
	cl, err := clientv3.New(clientv3.Config{
		Endpoints: []string{"127.0.0.1:2379"},
	})
	if err != nil {
		panic(err)
	}
	return cl
}
