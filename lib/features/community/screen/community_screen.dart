import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socibip/core/common/error_text.dart';
import 'package:socibip/core/common/loader.dart';
import 'package:socibip/features/community/controller/community_controller.dart';

class CommunitiesScreen extends ConsumerWidget {
  final String name;
  const CommunitiesScreen({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(getCommunityByNameProvider(name)).when(
            data: (community) => NestedScrollView(
                headerSliverBuilder: ((context, innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      expandedHeight: 150,
                      flexibleSpace: Stack(
                        children: [
                          Positioned(
                            child: Image.network(community.banner, fit: BoxFit.cover,),
                          ),
                        ],
                      ),
                    )
                  ];
                }),
                body: const Text('Dosplationg posts')),
            error: ((error, stackTrace) => ErrorText(error: error.toString())),
            loading: () => const Loader(),
          ),
    );
  }
}
