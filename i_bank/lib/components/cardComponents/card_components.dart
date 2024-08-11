import 'package:common_ui_toolkit/common_ui_toolkit.dart';

import '../../utils/index.dart';

class CommonCardComponents extends StatelessWidget {
  const CommonCardComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      primary: true,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          alignment: AlignmentDirectional.center,
          children: [
            const CommonContainer(
              style: CommonContainerModel(
                alignment: AlignmentDirectional.center,
                marginHorizontal: 0.02,
                marginVertical: 0.008,
                backgroundColor: colorwhite,
                borderRadius: 0.033,
                shadowColor: 0xFF3629B7,
                shadowOpacity: 0.04,
                shadowBlurRadius: 0.3,
                shadowOffsetDX: 4,
                shadowOffsetDY: 4,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonContainer(
                  onPress: () {},
                  style: const CommonContainerModel(
                    backgroundColor: colorFourth,
                    borderRadius: 1,
                    width: 0.18,
                    height: 0.08,
                  ),
                  child: Icon(
                    Icons.add,
                    color: const Color(colorwhite),
                    size: DEVICE_HEIGHT * 0.06,
                  ),
                ),
                const CommonText(
                  'Amanda',
                  style: CommonTextModel(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}
