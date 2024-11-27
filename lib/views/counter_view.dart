import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_counterapp/constants/app_colors.dart';
import 'package:stacked_counterapp/viewmodels/counter_viewmodel.dart';
import 'package:stacked_counterapp/widgets/app_button.dart';
import 'package:stacked_counterapp/widgets/counter_card.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CounterViewmodel(),
      builder: (context, viewmodel, child) {
        return Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Counter App",
                style: Theme.of(context).textTheme.headlineSmall!.apply(
                      color: AppColors.whiteColor,
                    ),
              ),
              backgroundColor: AppColors.primaryColor),
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Counter Display
                  CounterCard(
                    countText: viewmodel.counterSevice.counterValue.toString(),
                  ),
                  // Buttons Section
                  Column(
                    children: [
                      AppButton(
                        textColor: Colors.black,
                        background: Colors.teal.shade50,
                        icon: Icons.add,
                        onTap: () {
                          viewmodel.addValue();
                        },
                        title: "Add Counter Value",
                      ),
                      const SizedBox(height: 16.0),
                      AppButton(
                        textColor: AppColors.whiteColor,
                        background: AppColors.primaryColor,
                        icon: Icons.add,
                        onTap: () {
                          viewmodel.navigateToHome();
                        },
                        title: "Navigate to Home",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
