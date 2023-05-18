import 'package:flutter/material.dart';

class Education extends StatefulWidget{

  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomPaint(
            painter: ShapePainter(),
            size: const Size(0, 170),
          ),
          const SizedBox(width: 20,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("BACHELOR OF ENGINEERING", textAlign: TextAlign.left, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.primary),),
                const Text("( GTU with 9.14 CGPA )", textAlign: TextAlign.center,),
                const SizedBox(height: 10,),
                Text("HSC", textAlign: TextAlign.left, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.primary),),
                const Text("( GSEB with 78 % )", textAlign: TextAlign.center,),
                const SizedBox(height: 10,),
                Text("SSC", textAlign: TextAlign.left, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.primary),),
                const Text("( GSEB with 78 % )", textAlign: TextAlign.center,),
                const SizedBox(height: 10,),
                 ],
            ),
          )
        ],
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paintLine = Paint()
      ..color = Colors.black45
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    var paintCircle = Paint()
      ..color = Colors.black87
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    Offset startingPoint = const Offset(0, 0);
    Offset endingPoint = Offset(0, size.height);

    canvas.drawCircle(startingPoint, 10, paintCircle);
    canvas.drawCircle(endingPoint /2, 10, paintCircle);
    canvas.drawCircle(endingPoint , 10, paintCircle);
    canvas.drawLine(startingPoint, endingPoint, paintLine);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


class ProfessionalExperience extends StatelessWidget{

  const ProfessionalExperience({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}




//
//
//
//
//
// import 'package:flutter/material.dart';
//
// class Resume extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _ResumeState();
// }
//
// class _ResumeState extends State<Resume> with SingleTickerProviderStateMixin {
//   double _progress = 0.0;
//   late Animation<double> animation;
//
//   @override
//   void initState() {
//     super.initState();
//     var controller = AnimationController(duration: Duration(milliseconds: 3000), vsync: this);
//
//     animation = Tween(begin: 1.0, end: 0.0).animate(controller)
//       ..addListener(() {
//         setState(() {
//           _progress = animation.value;
//         });
//       });
//
//     controller.forward();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(child: CustomPaint(painter: LinePainter(_progress)),);
//   }
// }
//
// class LinePainter extends CustomPainter {
//   late Paint _paint;
//   double _progress;
//
//   LinePainter(this._progress) {
//     _paint = Paint()
//       ..color = Colors.green
//       ..strokeWidth = 8.0;
//   }
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     canvas.drawLine(Offset(0.0, 0.0), Offset(size.width - size.width * _progress, size.height - size.height * _progress), _paint);
//   }
//
//   @override
//   bool shouldRepaint(LinePainter oldDelegate) {
//     return oldDelegate._progress != _progress;
//   }
// }