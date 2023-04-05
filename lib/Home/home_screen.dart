
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubic/Cubit/counter_cubit.dart';
import 'package:flutter_bloc_cubic/Cubit/counter_cubit_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle txtStyle=const TextStyle(fontWeight: FontWeight.bold,fontSize: 25);
  @override
  Widget build(BuildContext context) {
    print("build");
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Cubit Counter Example"),
      ),
      body: BlocBuilder<CounterCubit,CubitCounterState>(
        builder: (context, state){
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (state is CounterUpdateChanged)?Text(state.counter.toString(),style: txtStyle,):
                Text("0",style:txtStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(onPressed: (){
                      context.read<CounterCubit>().counterDecrease();
                    },
                      child: Icon(Icons.remove),
                    ),
                    FloatingActionButton(onPressed: (){
                      context.read<CounterCubit>().counterIncrease();
                    },
                      child: Icon(Icons.add),
                    ),
                  ],
                )
              ],
            ),
          );
        }
      ),
    );
  }
}
