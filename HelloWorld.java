class HelloWorld {
    private native void print();

    public static void main(String[] args) {
        new HelloWorld().print();
    }

    static {
//        System.loadLibrary("HelloWorld");
        System.load("/Users/oak/go/src/github.com/okblockchainlab/jnisample/libHelloWorld.dylib");
    }
}
