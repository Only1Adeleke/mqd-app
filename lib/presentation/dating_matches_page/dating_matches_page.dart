import '../dating_matches_page/widgets/dating_matches_item_widget.dart';
import 'bloc/dating_matches_bloc.dart';
import 'models/dating_matches_item_model.dart';
import 'models/dating_matches_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DatingMatchesPage extends StatefulWidget {
  const DatingMatchesPage({Key? key})
      : super(
          key: key,
        );

  @override
  DatingMatchesPageState createState() => DatingMatchesPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DatingMatchesBloc>(
      create: (context) => DatingMatchesBloc(DatingMatchesState(
        datingMatchesModelObj: DatingMatchesModel(),
      ))
        ..add(DatingMatchesInitialEvent()),
      child: DatingMatchesPage(),
    );
  }
}

class DatingMatchesPageState extends State<DatingMatchesPage>
    with AutomaticKeepAliveClientMixin<DatingMatchesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: getPadding(
                          left: 32,
                          top: 25,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: getPadding(
                                  left: 1,
                                ),
                                child: BlocSelector<DatingMatchesBloc,
                                    DatingMatchesState, DatingMatchesModel?>(
                                  selector: (state) =>
                                      state.datingMatchesModelObj,
                                  builder: (context, datingMatchesModelObj) {
                                    return ListView.separated(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (
                                        context,
                                        index,
                                      ) {
                                        return Padding(
                                          padding: getPadding(
                                            top: 26.5,
                                            bottom: 26.5,
                                          ),
                                          child: SizedBox(
                                            width: getHorizontalSize(
                                              343,
                                            ),
                                            child: Divider(
                                              height: getVerticalSize(
                                                1,
                                              ),
                                              thickness: getVerticalSize(
                                                1,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      itemCount: datingMatchesModelObj
                                              ?.datingMatchesItemList.length ??
                                          0,
                                      itemBuilder: (context, index) {
                                        DatingMatchesItemModel model =
                                            datingMatchesModelObj
                                                        ?.datingMatchesItemList[
                                                    index] ??
                                                DatingMatchesItemModel();
                                        return DatingMatchesItemWidget(
                                          model,
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 7,
                              ),
                              child: Divider(
                                height: getVerticalSize(
                                  1,
                                ),
                                thickness: getVerticalSize(
                                  1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
