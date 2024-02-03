import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  Menu _menu = Menu.inbox;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              title: Text('Title'),
              subtitle: Text('subtitle'),
            ),
            _buildMenu(menu: Menu.inbox, icon: Icons.mail, menuText: 'Inbox'),
            _buildMenu(menu: Menu.outbox, icon: Icons.send, menuText: 'Outbox'),
            _buildMenu(
                menu: Menu.favourite,
                icon: Icons.favorite,
                menuText: 'Favourite'),
            _buildMenu(
                menu: Menu.archive, icon: Icons.archive, menuText: 'Archive'),
            _buildMenu(menu: Menu.trash, icon: Icons.delete, menuText: 'Trash'),
            _buildMenu(menu: Menu.spam, icon: Icons.error, menuText: 'Spam'),
            Divider(),
            Text(
              'Labels',
              style: TextStyle(color: Colors.grey),
            ),
            _buildMenu(
                menu: Menu.family, icon: Icons.bookmark, menuText: 'Family'),
            _buildMenu(
                menu: Menu.friends, icon: Icons.bookmark, menuText: 'Friends'),
            _buildMenu(menu: Menu.work, icon: Icons.bookmark, menuText: 'Work'),
            Divider(),
            _buildMenu(
                menu: Menu.settings,
                icon: Icons.settings,
                menuText: 'Settings & Account'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '\u00a9Samrat Al Shahriar',
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildMenu(
      {required Menu menu, required IconData icon, required String menuText}) {
    return ListTile(
      selectedColor: Theme.of(context).colorScheme.primary,
      selectedTileColor: Theme.of(context).colorScheme.primaryContainer,
      selected: _menu == menu,
      onTap: () {
        setState(() {
          _menu = menu;
        });
      },
      visualDensity: VisualDensity.compact,
      leading: Icon(icon),
      title: Text(menuText),
    );
  }
}

enum Menu {
  inbox,
  outbox,
  favourite,
  archive,
  trash,
  spam,
  family,
  friends,
  work,
  settings
}
