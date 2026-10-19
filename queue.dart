class Queue<T> {
  final List<T> _items = [];

  // Menambahkan elemen ke antrean
  void enqueue(T element) {
    _items.add(element);
    print('$element berhasil ditambahkan ke antrian');
  }

  // Menghapus elemen dari antrean (FIFO)
  T? dequeue() {
    if (isEmpty) return null;
    T removed = _items.removeAt(0);
    print('$removed dihapus dari antrian');
    return removed;
  }

  // Mengecek apakah antrean kosong
  bool get isEmpty => _items.isEmpty;

  // Menampilkan isi antrean
  void display() {
    print('isi antrian $_items');
  }
}

void main() {
  Queue<int> antrian = Queue<int>();

  antrian.enqueue(10);
  antrian.enqueue(20);
  antrian.enqueue(30);
  antrian.display();
  antrian.dequeue();
  antrian.display();
}
