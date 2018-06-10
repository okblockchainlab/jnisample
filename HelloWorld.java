class HelloWorld {
    private native void print();

    public static void main(String[] args) {
        new HelloWorld().print();
    }

    static {
        System.loadLibrary("HelloWorld");
//      or (on mac):
//        System.load("/Users/oak/go/src/github.com/okblockchainlab/jnisample/libHelloWorld.dylib");
//      or (on linux):
//        System.load("/Users/oak/go/src/github.com/okblockchainlab/jnisample/libHelloWorld.so");
    }
}
