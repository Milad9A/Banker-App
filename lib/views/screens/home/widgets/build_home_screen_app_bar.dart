import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:banker/config/theme/color_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:banker/providers/authentication/authentication/authentication_bloc.dart';
import 'package:banker/config/helpers/date_foramtter.dart';

AppBar buildHomeScreenAppBar(BuildContext context) {
  return AppBar(
    leadingWidth: 0.0,
    backgroundColor: Colors.white,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            return Text(
              'Welcome Back' +
                  state.maybeMap(
                    authenticated: (data) => ', ${data.user.name}',
                    orElse: () => '',
                  ),
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: ColorRepository.darkBlue,
                  ),
              overflow: TextOverflow.ellipsis,
            );
          },
        ),
        Text(
          DateFormatter().getDateRepresentation(DateTime.now()),
          style: Theme.of(context).textTheme.bodyText2!,
        ),
      ],
    ),
    actions: [
      IconButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            enableDrag: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10.0),
              ),
            ),
            builder: (context) {
              return Container(
                height: 250.0,
                child: Column(
                  children: [
                    Icon(
                      CupertinoIcons.minus,
                      color: Colors.grey.shade200,
                      size: 60.0,
                    ),
                    ListTile(
                      onTap: () {
                        BlocProvider.of<AuthenticationBloc>(context).add(
                          AuthenticationLoggedOut(),
                        );
                        Navigator.pop(context);
                      },
                      leading: Icon(Icons.logout),
                      title: Text('Logout'),
                    ),
                  ],
                ),
              );
            },
          );
        },
        icon: Icon(Icons.person),
        color: ColorRepository.darkBlue,
      ),
    ],
  );
}
