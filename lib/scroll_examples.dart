import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class TheUseOFIt extends StatefulWidget {
  const TheUseOFIt({super.key});

  @override
  State<TheUseOFIt> createState() => _TheUseOFItState();
}

class _TheUseOFItState extends State<TheUseOFIt> {
  final Logger logger = Logger();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Use Of It'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
                height: 200,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 100,
                  separatorBuilder: (context, index) {
                    return const VerticalDivider();
                  },
                  itemBuilder: (context, index) {
                    return InkWell(
                      onDoubleTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Container $index double clicked'),
                          ),
                        );
                        logger.d('Container $index double clicked');
                        logger.i('Container $index double clicked');
                      },
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Container $index clicked'),
                          ),
                        );
                      },
                      onLongPress: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Container $index long pressed'),
                          ),
                        );
                      },
                      child: CustomContainer(
                        color: Colors.red,
                        text: "Container $index",
                      ),
                    );
                  },
                )),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 100,
              (context, index) {
                return InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Container $index clicked'),
                      ),
                    );
                  },
                  onDoubleTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Container $index double clicked'),
                      ),
                    );
                  },
                  onLongPress: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Container $index long pressed'),
                      ),
                    );
                  },
                  child: CustomContainer(
                    color: Colors.red,
                    text: "Container $index",
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ScrollExamples extends StatefulWidget {
  const ScrollExamples({super.key});

  @override
  State<ScrollExamples> createState() => _ScrollExamplesState();
}

class _ScrollExamplesState extends State<ScrollExamples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Examples'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(
                parent: CarouselScrollPhysics(),
              ),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  CustomContainer(
                    color: Colors.red,
                    text: "Container One",
                  ),
                  CustomContainer(
                    color: Colors.green,
                    text: "Container Two",
                  ),
                  CustomContainer(
                    color: Colors.blue,
                    text: "Container Three",
                  ),
                  CustomContainer(
                    color: Colors.yellow,
                    text: "Container Four",
                  ),
                  CustomContainer(
                    color: Colors.orange,
                    text: "Container Five",
                  ),
                  CustomContainer(
                    color: Colors.purple,
                    text: "Container Six",
                  ),
                  CustomContainer(
                    color: Colors.pink,
                    text: "Container Seven",
                  ),
                  CustomContainer(
                    color: Colors.brown,
                    text: "Container Eight",
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: MaterialButton(
              onPressed: () {},
              color: Colors.red,
              child: const Text('Button'),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color color;
  final String text;
  const CustomContainer({
    super.key,
    this.color = Colors.red,
    this.text = 'Custom Container',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        border: Border(
          top: BorderSide(
            color: color.withOpacity(0.5),
            width: 2,
          ),
          bottom: BorderSide(
            color: color.withOpacity(0.5),
            width: 2,
          ),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0, 5),
          ),
          BoxShadow(
            color: Colors.blue,
            offset: Offset(0, -5),
          ),
        ],
      ),
      margin: const EdgeInsets.all(25),
      width: 100,
      child: Center(
        child: Text(text),
      ),
    );
  }
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(
        parent: CarouselScrollPhysics(),
      ),
      children: const [
        CustomContainer(
          color: Colors.red,
          text: "Container One",
        ),
        CustomContainer(
          color: Colors.green,
          text: "Container Two",
        ),
        CustomContainer(
          color: Colors.blue,
          text: "Container Three",
        ),
        CustomContainer(
          color: Colors.yellow,
          text: "Container Four",
        ),
        CustomContainer(
          color: Colors.orange,
          text: "Container Five",
        ),
        CustomContainer(
          color: Colors.purple,
          text: "Container Six",
        ),
        CustomContainer(
          color: Colors.pink,
          text: "Container Seven",
        ),
        CustomContainer(
          color: Colors.brown,
          text: "Container Eight",
        ),
      ],
    );
  }
}

class ListViewBuilderExample extends StatelessWidget {
  const ListViewBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(
        parent: CarouselScrollPhysics(),
      ),
      itemCount: 100,
      itemBuilder: (context, index) {
        return CustomContainer(
          color: Colors.red,
          text: "Container $index",
        );
      },
    );
  }
}

class ListViewSeparated extends StatelessWidget {
  const ListViewSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 100,
      separatorBuilder: (context, index) {
        return const VerticalDivider();
      },
      itemBuilder: (context, index) {
        return CustomContainer(
          color: Colors.red,
          text: "Container $index",
        );
      },
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    final User user = User(
      name: 'John Doe',
      email: 'johndoe@gmail.com',
      phone: '123-456-7890',
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PageTwo(),
                settings: RouteSettings(
                  arguments: user,
                ),
              ),
            );
          },
          child: const Text('Go to Page Two'),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final User user = ModalRoute.of(context)?.settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Name: ${user.name}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'Email: ${user.email}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'Phone: ${user.phone}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  final String name;
  final String email;
  final String phone;

  User({
    required this.name,
    required this.email,
    required this.phone,
  });
}
