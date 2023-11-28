import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final _blackcolor = const Color(0xFF181818);
  final double x;
  final double y;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.x,
    required this.y,
  });
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(
        x,
        y,
      ),
      child: Container(
        clipBehavior: Clip.hardEdge, //container를 넘어서는 부분을 짜르는것
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackcolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? _blackcolor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _blackcolor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted
                              ? _blackcolor
                              : Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                //윗부분에 영향을 주지 않고 icon의 크기만 조절
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(-5, 12), //icon을 움직이려는 좌표
                  child: Icon(
                    icon,
                    color: isInverted ? _blackcolor : Colors.white,
                    size: 88,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
