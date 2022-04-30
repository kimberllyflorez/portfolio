import 'package:flutter/material.dart';
import 'package:portafolio_kimberlly/models/projects_model.dart';

import '../palette.dart';

class ListWorks extends StatelessWidget {
  final ProjectElement? project;

  const ListWorks({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.all(10),
      height: 100,
      width: double.infinity,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(
          context,
          'detailsApp',
          arguments: project,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project?.title ?? '',
                    style: TextStyle(
                      color: Palette.backgroundColor3,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 220,
                    child: Text(
                      project?.smallDescription ?? '',
                      style: const TextStyle(color: Colors.black54),
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_forward_sharp,
                  color: Palette.backgroundColor3,
                ),
                const Text(
                  'more',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
