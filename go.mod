module github.com/shiningacg/filestore

go 1.15

replace (
	github.com/coreos/bbolt v1.3.4 => go.etcd.io/bbolt v1.3.4
	github.com/coreos/go-systemd => github.com/coreos/go-systemd/v22 v22.0.0
	// github.com/shiningacg/ServiceFile => /Users/shlande/go/src/github.com/shlande/ServiceFile
	google.golang.org/grpc v1.32.0 => google.golang.org/grpc v1.26.0
)

require (
	github.com/StackExchange/wmi v0.0.0-20190523213315-cbe66965904d // indirect
	github.com/boltdb/bolt v1.3.1
	github.com/coreos/bbolt v1.3.4 // indirect
	github.com/coreos/etcd v3.3.25+incompatible
	github.com/coreos/go-systemd v0.0.0-00010101000000-000000000000 // indirect
	github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f // indirect
	github.com/dgrijalva/jwt-go v3.2.0+incompatible // indirect
	github.com/go-ole/go-ole v1.2.4 // indirect
	github.com/go-redis/redis/v8 v8.2.3
	github.com/golang/protobuf v1.4.2
	github.com/google/btree v1.0.0 // indirect
	github.com/google/uuid v1.1.2
	github.com/grpc-ecosystem/go-grpc-middleware v1.2.2 // indirect
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.15.0 // indirect
	github.com/jonboulle/clockwork v0.2.2 // indirect
	github.com/metaverse/truss v0.1.0 // indirect
	github.com/shiningacg/mygin v0.0.0-20200926013636-8cb1051618b4
	github.com/shiningacg/mygin-frame-libs v0.0.0-20200801133652-d3ee76596824
	github.com/shiningacg/sn-ipfs v0.0.0-20200924124624-1bb5619e1f1a
	github.com/shirou/gopsutil v2.20.9+incompatible
	github.com/soheilhy/cmux v0.1.4 // indirect
	github.com/tmc/grpc-websocket-proxy v0.0.0-20200427203606-3cfed13b9966 // indirect
	github.com/xiang90/probing v0.0.0-20190116061207-43a291ad63a2 // indirect
	go.etcd.io/bbolt v1.3.5 // indirect
	go.etcd.io/etcd v3.3.25+incompatible
	go.uber.org/zap v1.16.0 // indirect
	golang.org/x/time v0.0.0-20200630173020-3af7569d3a1e // indirect
	google.golang.org/grpc v1.32.0
	sigs.k8s.io/yaml v1.2.0 // indirect
)
