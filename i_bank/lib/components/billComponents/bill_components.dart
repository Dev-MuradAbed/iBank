import 'package:common_ui_toolkit/common_ui_toolkit.dart';

import '../../utils/index.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: CommonContainer(
              style: const CommonContainerModel(
                marginVertical: 0.04,
                borderRadius: 0.033,
                shadowColor: 0xFF3629B7,
                shadowBlurRadius: 10.0,
                shadowOffsetDX: 0.6,
                shadowOffsetDY: 0.5,
                shadowOpacity: 0.2,
              ),
              child: ClipPath(
                clipper: MyClipper(ovalRadius: 13),
                child: CommonContainer(
                  style: const CommonContainerModel(
                    marginHorizontal: 0.01,
                    width: 0.9,
                    backgroundColor: colorwhite,
                    borderRadius: 0.033,
                    paddingVertical: 0.02,
                    paddingHorizontal: 0.02,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CommonText(
                          'All the Bills',
                          style: CommonTextModel(
                            fontSize: h3FONT(),
                            fontWeight: FontWeight.bold,
                            marginBottom: 0.009,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Column(
                            children: <Widget>[
                              ticketDetailsWidget(
                                  title: 'Name', description: 'Murad Abed'),
                              ticketDetailsWidget(
                                  title: 'Address',
                                  description:
                                      '403 East 4th Street, Santa Ana'),
                              ticketDetailsWidget(
                                  title: 'Phone number',
                                  description: '+8424599721'),
                              ticketDetailsWidget(
                                  title: 'Code', description: '#2343543'),
                              ticketDetailsWidget(
                                  title: 'From', description: '01/10/2019'),
                              ticketDetailsWidget(
                                  title: 'To', description: '01/11/2019'),
                              SizedBox(
                                height: DEVICE_HEIGHT * 0.01,
                              ),
                              ticketDetailsWidget(
                                  title: 'Electric fee', description: '\$470'),
                              const CommonContainer(
                                style: CommonContainerModel(
                                  marginTop: 0.02,
                                  width: 1,
                                  height: 0.003,
                                  backgroundColor: colorGray4,
                                ),
                              ),
                              ticketDetailsWidget(
                                  title: 'Tax', description: '\$10'),
                              const CommonContainer(
                                style: CommonContainerModel(
                                  marginTop: 0.02,
                                  width: 1,
                                  height: 0.003,
                                  backgroundColor: colorGray4,
                                ),
                              ),
                              ticketDetailsWidget(
                                  title: 'TOTAL', description: '\$480'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ticketDetailsWidget({String? title, String? description}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 9.0, bottom: 5),
              child: CommonText(
                title ?? '',
                style: const CommonTextModel(
                  fontColor: colorGray5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
        CommonContainer(
          width: 0.44,
          child: Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: CommonText(
                  description ?? '',
                  style: const CommonTextModel(
                    textAlign: TextAlign.end,
                    fontColor: colorBlack,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.fade,
                  ),
                ),
              )),
        )
      ],
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  final double ovalRadius;

  MyClipper({this.ovalRadius = 20.0});

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    // Modify the positions and sizes of the ovals
    path.addOval(Rect.fromCircle(
        center: Offset(0.0, size.height - 30 * 2), radius: ovalRadius));
    path.addOval(Rect.fromCircle(
        center: Offset(size.width, size.height - 30 * 2), radius: ovalRadius));

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
