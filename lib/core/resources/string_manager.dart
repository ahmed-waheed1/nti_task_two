import '../../features/Home/presentation/models/task_group_drop_down_item_model.dart';
import '../../features/Home/presentation/models/task_groups_item_model.dart';
import '../../features/Home/presentation/models/task_type_container_model.dart';
import 'app_images.dart';
import 'color_manager.dart';

class StringManager {
  static const String appName = 'Do It';
  static const String updateUser = 'Update Profile';
  static const String settings = 'Settings';
  static const String notifications = 'Notifications';
  static const String enableCloud = 'Enable Cloud';
  static const String taskGroupDropDownHint = 'Select Task Group';
  static const String taskGroupDropDownErrorMessage =
      'Please select task group';
  static const String taskGroupSelectionMessage = 'Please select task group';
  static const String numberOfTasks = '5';
  static const String inProgressTasks = 'In Progress Tasks';
  static const String yourProgress = 'Your today\'s tasks almost done!';
  static const String yourProgressPersentageValue = '80';
  static const String viewTasks = 'View Tasks';
  static const String taskGroups = 'Task Groups';
  static const String workTask = 'Work Task';
  static const String workTaskTitle = 'Add New Features';
  static const String personalTask = 'Personal Task';
  static const String personalTaskTitle =
      'AImprove my English skills by trying to speek';
  static const String homeTask = 'Home Task';
  static const String homeTaskTitle =
      'Add new feature for Do It app and commit it';
  static const String noTasks =
      'There are no tasks yet,\nPress the button\nTo add New Task ';
  static const String welcomeMessage = 'Welcome To \n Do It !';
  static const String readyMessage =
      'Ready to conquer your tasks? Let\'s Do It together.';
  static const String letsStart = 'Let\'s Start';
  static const String hello = 'Hello!';
  static const String userName = 'Ahmed Saber';
  static const String enterName = 'Please enter your name';
  static const String yourName = 'Your Name';
  static const String typeYourName = 'type your name here';
  static const String save = 'Save';
  static List<TaskTypeContainerModel> taskTypeContainerModelItems = [
    TaskTypeContainerModel(
      title: workTask,
      subTitle: workTaskTitle,
      color: ColorManager.black,
      iconPath: AppImages.workIcon,
    ),
    TaskTypeContainerModel(
      title: personalTask,
      subTitle: personalTaskTitle,
      color: ColorManager.lightGreenaB,
      iconPath: AppImages.personalIcon,
      titleColor: ColorManager.grey7c,
      subTitleColor: ColorManager.black2c,
    ),
    TaskTypeContainerModel(
      title: homeTask,
      subTitle: homeTaskTitle,
      color: ColorManager.lightPink,
      iconPath: AppImages.homeIcon,
      titleColor: ColorManager.grey7c,
      subTitleColor: ColorManager.black2c,
    ),
  ];
  static List<TaskGroupsItemModel> taskGroupsItems = [
    TaskGroupsItemModel(
      title: personalTask,
      iconPath: AppImages.personalIcon,
      numberOfTasks: 5,
      numberOfTasksColor: ColorManager.green54,
      backgroundColorOfNumberOfTasks: ColorManager.lightGreen,
    ),
    TaskGroupsItemModel(
      title: homeTask,
      iconPath: AppImages.homeIcon,
      numberOfTasks: 3,
      numberOfTasksColor: ColorManager.pink84,
      backgroundColorOfNumberOfTasks: ColorManager.lightPink,
    ),
    TaskGroupsItemModel(
      title: workTask,
      iconPath: AppImages.workIcon,
      numberOfTasks: 1,
      numberOfTasksColor: ColorManager.white,
      backgroundColorOfNumberOfTasks: ColorManager.black,
    ),
  ];
  static List<TaskGroupItem> taskGroupDropDownList = [
    TaskGroupItem(name: 'Work', iconPath: AppImages.workIcon),
    TaskGroupItem(name: 'Home', iconPath: AppImages.homeIcon),
    TaskGroupItem(name: 'Personal', iconPath: AppImages.personalIcon),
  ];
}
