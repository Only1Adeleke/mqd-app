import '../nearby_dating_events_page/widgets/listeventtype_item_widget.dart';
import 'bloc/nearby_dating_events_bloc.dart';
import 'models/listeventtype_item_model.dart';
import 'models/nearby_dating_events_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NearbyDatingEventsPage extends StatefulWidget {
  const NearbyDatingEventsPage({Key? key})
      : super(
          key: key,
        );

  @override
  NearbyDatingEventsPageState createState() => NearbyDatingEventsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NearbyDatingEventsBloc>(
      create: (context) => NearbyDatingEventsBloc(NearbyDatingEventsState(
        nearbyDatingEventsModelObj: NearbyDatingEventsModel(),
      ))
        ..add(NearbyDatingEventsInitialEvent()),
      child: NearbyDatingEventsPage(),
    );
  }
}

class NearbyDatingEventsPageState extends State<NearbyDatingEventsPage>
    with AutomaticKeepAliveClientMixin<NearbyDatingEventsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: getPadding(
              left: 27,
              top: 30,
              right: 26,
            ),
            child: BlocSelector<NearbyDatingEventsBloc, NearbyDatingEventsState,
                NearbyDatingEventsModel?>(
              selector: (state) => state.nearbyDatingEventsModelObj,
              builder: (context, nearbyDatingEventsModelObj) {
                return ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: getVerticalSize(
                        30,
                      ),
                    );
                  },
                  itemCount: nearbyDatingEventsModelObj
                          ?.listeventtypeItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    ListeventtypeItemModel model = nearbyDatingEventsModelObj
                            ?.listeventtypeItemList[index] ??
                        ListeventtypeItemModel();
                    return ListeventtypeItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
