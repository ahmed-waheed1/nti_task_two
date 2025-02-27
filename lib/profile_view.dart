import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:logger/logger.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  DropDownItemModel? selectedValue;
  final List<DropDownItemModel> dropDownItems = [
    DropDownItemModel(
      title: 'Item 1',
      subtitle: 'Subtitle 1',
      imageUrl:
          'https://www.timeoutabudhabi.com/cloud/timeoutabudhabi/2025/02/05/next-public-holiday-UAE.png',
    ),
    DropDownItemModel(
      title: 'Item 2',
      subtitle: 'Subtitle 2',
      imageUrl:
          'https://www.timeoutabudhabi.com/cloud/timeoutabudhabi/2025/02/05/next-public-holiday-UAE.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            'https://www.timeoutabudhabi.com/cloud/timeoutabudhabi/2025/02/05/next-public-holiday-UAE.png',
            width: double.infinity,
            height: 320,
            fit: BoxFit.fill,
          ),
          const CustomContainer(
            title: 'Update Profile',
            iconPath: 'assets/icons/usericon.svg',
          ),
          const CustomContainer(
            title: 'History',
            iconPath: 'assets/icons/history.svg',
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: dropDownItems.isEmpty
                ? const Center(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'No items available',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                : DropdownButtonHideUnderline(
                    child: DropdownButton<DropDownItemModel>(
                      isExpanded: true,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      value: selectedValue,
                      icon: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 18,
                        color: Colors.black54,
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      itemHeight: 70,
                      items: dropDownItems.map((DropDownItemModel item) {
                        return DropdownMenuItem<DropDownItemModel>(
                          value: item,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundImage: NetworkImage(item.imageUrl),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      item.title,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      item.subtitle,
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                      onChanged: (DropDownItemModel? newValue) {
                        setState(() {
                          selectedValue = newValue;
                          Logger().d(newValue);
                        });
                      },
                      dropdownColor: Colors.white,
                    ),
                  ),
          )
        ],
      ),
    );
  }
}

class DropDownItemModel {
  final String title;
  final String subtitle;
  final String imageUrl;

  DropDownItemModel({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });
}

class CustomContainer extends StatelessWidget {
  final String title;
  final String iconPath;
  const CustomContainer(
      {super.key, required this.title, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(20),
      child: Row(
        children: [
          SvgPicture.asset(
            iconPath,
            // colorFilter: const ColorFilter.mode(
            //   Colors.black,
            //   BlendMode.srcIn,
            // ),
            width: 100,
            height: 100,
            // fit: BoxFit.fill,
          ),
          const SizedBox(width: 10),
          Text(title),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_outlined),
          const Gap(16),
        ],
      ),
    );
  }
}

class CustomDropdown extends StatefulWidget {
  final List<DropDownItemModel> dropDownItems;
  final DropDownItemModel? selectedValue;
  final ValueChanged<DropDownItemModel?> onChanged;

  const CustomDropdown({
    super.key,
    required this.dropDownItems,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: PopupMenuButton<DropDownItemModel>(
        onSelected: widget.onChanged,
        itemBuilder: (context) => widget.dropDownItems.map((item) {
          return PopupMenuItem(
            value: item,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(item.imageUrl),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        item.subtitle,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.selectedValue?.title ?? 'Select an item',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: Colors.black54,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
