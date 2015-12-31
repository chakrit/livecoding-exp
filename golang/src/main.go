package main

import (
	"fmt"
	"net/http"
)

const ListenAddr = ":8080"

func main() {
	fmt.Println("listening on:", ListenAddr)
	http.ListenAndServe(ListenAddr, http.HandlerFunc(handleHello))
}

func handleHello(resp http.ResponseWriter, req *http.Request) {
	resp.Write([]byte("Hello, LiveCoding.TV!"))
}
