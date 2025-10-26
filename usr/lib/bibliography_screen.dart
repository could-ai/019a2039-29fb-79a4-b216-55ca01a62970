import 'package:flutter/material.dart';

// Model data untuk setiap item dalam daftar pustaka
class Reference {
  final String author;
  final int year;
  final String title;
  final String publisher;

  const Reference({
    required this.author,
    required this.year,
    required this.title,
    required this.publisher,
  });
}

// Widget untuk menampilkan layar daftar pustaka
class BibliographyScreen extends StatelessWidget {
  const BibliographyScreen({super.key});

  // Data daftar pustaka (contoh)
  final List<Reference> references = const [
    Reference(
      author: 'Kurniawan, D.',
      year: 2023,
      title: 'Pemrograman Mobile dengan Flutter',
      publisher: 'Penerbit Informatika',
    ),
    Reference(
      author: 'Sanjaya, R.',
      year: 2022,
      title: 'Membangun Aplikasi Cross-Platform',
      publisher: 'Elex Media Komputindo',
    ),
    Reference(
      author: 'Pratama, A.',
      year: 2021,
      title: 'Dasar-Dasar UI/UX Design',
      publisher: 'Gramedia Pustaka Utama',
    ),
    Reference(
      author: 'Flutter Team',
      year: 2024,
      title: 'Flutter Documentation',
      publisher: 'Google',
    ),
     Reference(
      author: 'Supabase Team',
      year: 2024,
      title: 'Supabase Documentation',
      publisher: 'Supabase',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Pustaka'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: references.length,
        itemBuilder: (context, index) {
          final ref = references[index];
          return Card(
            elevation: 2.0,
            margin: const EdgeInsets.only(bottom: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${ref.author} (${ref.year})',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    ref.title,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    ref.publisher,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
