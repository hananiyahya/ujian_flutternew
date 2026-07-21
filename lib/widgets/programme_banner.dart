// lib/widgets/programme_banner.dart
import 'package:flutter/material.dart';

import '../models/programme.dart';
import '../theme.dart';
import 'programme_card.dart'; // guna semula CategoryPill

class ProgrammeBanner extends StatelessWidget {
  const ProgrammeBanner({super.key, required this.programme
});

  final Programme programme;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 160,
          width: double.infinity,
          decoration: BoxDecoration(
            color: KptTheme.navy,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              programme.flagEmoji,
              style: const TextStyle(fontSize: 56),
            ),
          ),
        ),
        Positioned(
          left: 16,
          bottom: 14,
          right: 90, // elak teks tersorok di bawah pill kategori
          child: Text(
            '${programme.universityName}\n${programme.fieldOfStudy}',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Positioned(
          top: 12,
          right: 12,
          child: CategoryPill(category: programme.category)
,
        ),
      ],
    );
  }
}