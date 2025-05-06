import 'package:flutter/material.dart';
import 'package:interview_task_vasai/helpers/global.dart';

class TabsAppBar extends StatelessWidget {
  const TabsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(53, 118, 230, 1),
            Color.fromRGBO(79, 129, 215, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: mq.height * .06,
          left: mq.width * .05,
          right: mq.width * .05,
          bottom: mq.height * .01,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // leading image
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/image 7.png',
                  fit: BoxFit.cover,
                  height: mq.height * .1,
                ),
              ),
            ),
            const SizedBox(width: 10),

            // title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Ethan Reynolds',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'Lead UI/UX Designer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Spacer(),

            // notification icon
            InkWell(
              onTap: () {},
              child: Image.asset(
                'assets/images/notification.png',
                fit: BoxFit.cover,
                height: mq.height * .05,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
