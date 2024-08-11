import 'package:common_ui_toolkit/common_ui_toolkit.dart';
import 'package:i_bank/utils/constant.dart';

class CommonButtonIbank extends StatelessWidget {
  const CommonButtonIbank({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CommonButton(
          style: CommonButtonModel(
            width: double.infinity,
            marginHorizontal: 0.03,
            paddingVertical: 0.013,
            backgroundColor: colorFourth,
            borderRadius: 0.033,
            fontColor: colorwhite,
          ),
          text: 'Button',
        ),
        const CommonButton(
          style: CommonButtonModel(
            width: double.infinity,
            marginHorizontal: 0.03,
            paddingVertical: 0.013,
            backgroundColor: colorPrimary,
            borderRadius: 0.033,
            fontColor: colorwhite,
          ),
          text: 'Button',
        ),
        const CommonButton(
          style: CommonButtonModel(
            fontColor: colorRed,
          ),
          text: 'Button',
        ),
        const CommonButton(
          style: CommonButtonModel(
            fontColor: colorGray3,
          ),
          text: 'Button',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CommonContainer(
              onPress: () {},
              style: const CommonContainerModel(
                backgroundColor: colorPrimary,
                borderRadius: 1,
                width: 0.13,
                height: 0.06,
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: Color(colorwhite),
              ),
            ),
            CommonContainer(
              onPress: () {},
              style: const CommonContainerModel(
                backgroundColor: colorFourth,
                borderRadius: 1,
                width: 0.13,
                height: 0.06,
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: Color(colorwhite),
              ),
            ),
            const CommonButton(
              style: CommonButtonModel(
                fontColor: colorPrimary,
                fontWeight: FontWeight.w400,
              ),
              text: 'Link',
            ),
          ],
        ),
      ],
    );
  }
}
