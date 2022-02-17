import 'package:flutter/material.dart';
import 'package:mapfunde_test/utils/app_colors.dart';
import 'package:mapfunde_test/utils/size_config.dart';

enum JobStatus {
  completed,
  pending,
  cancelled,
}

extension Properties on JobStatus {
  String jobString() {
    switch (this) {
      case JobStatus.completed:
        return 'Complete jobs';
      case JobStatus.pending:
        return 'Pending jobs';
      case JobStatus.cancelled:
        return 'Cancelled jobs';
      default:
        return '';
    }
  }
}

extension ColorProperties on JobStatus {
  Color jobTagColor() {
    switch (this) {
      case JobStatus.completed:
        return AppColors.primaryGreenTwo;
      case JobStatus.pending:
        return AppColors.primaryYellow;
      case JobStatus.cancelled:
        return AppColors.primaryOrange;

      default:
        return AppColors.appBlue;
    }
  }
}

class JobMetric extends StatelessWidget {
  const JobMetric({
    Key? key,
    required this.status,
    this.metricCount = 0,
  }) : super(key: key);
  final JobStatus status;
  final int metricCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.height(11)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.circle,
                size: SizeConfig.width(12),
                color: status.jobTagColor(),
              ),
              const SizedBox(width: 8),
              Text(
                status.jobString(),
                style: TextStyle(
                  fontSize: SizeConfig.textSize(14),
                ),
              )
            ],
          ),
          Text(
            metricCount.toString(),
            style: TextStyle(
              fontSize: SizeConfig.textSize(14),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
