import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_counterapp/constants/app_colors.dart';
import 'package:stacked_counterapp/viewmodels/counter_home_viewmodel.dart';
import 'package:stacked_counterapp/widgets/app_button.dart';
import 'package:stacked_counterapp/widgets/counter_card.dart';

class CounterHomeView extends StatelessWidget {
  const CounterHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CounterHomeViewmodel(),
      builder: (context, viewmodel, child) {
        return Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: Text(
                "Home Counter",
                style: Theme.of(context).textTheme.headlineSmall!.apply(
                      color: AppColors.whiteColor,
                    ),
              ),
              backgroundColor: AppColors.primaryColor),
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Welcome Text
                    const Text(
                      "Welcome to the Counter Home!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor),
                    ),
                    const SizedBox(height: 24.0),
                    // Counter Display
                    CounterCard(
                      countText:
                          viewmodel.counterService.counterValue.toString(),
                    ),
                    const SizedBox(height: 32.0),
                    // Action Button
                    AppButton(
                        hasIcon: false,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        title: "Go to Counter Page",
                        textColor: AppColors.whiteColor,
                        background: AppColors.primaryColor),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
