import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:newsapp/Data/Cubits/get_news_cubit.dart';
import 'package:newsapp/Data/Models/get_news_model.dart';
import 'package:newsapp/fourthscreen.dart';
import 'package:newsapp/thirdscreen.dart';
import 'package:newsapp/used widgets/usedwidgets.dart';



class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.grey,
                      child: Column(
                        children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 10),
                           child: Image(image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Home-icon.svg/1200px-Home-icon.svg.png'),
                           height: 25,
                           ),
                         ),
                          const Text(
                            'home',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 217, 81, 63),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/512/60/60993.png'),
                              height: 25,
                            ),
                          ),
                          const Text(
                            'favorite',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 183, 183, 182)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    FloatingActionButton(
                      elevation: 0,
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      foregroundColor: const Color.fromARGB(255, 183, 183, 182),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image(image: NetworkImage('https://static.thenounproject.com/png/4851855-200.png'),
                              height: 25,
                            ),
                          ),
                          const Text(
                            'profile',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 183, 183, 182)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body:
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:50),
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<GetNewsCubit>().getNews();
                        },
                        child: const Text('Let\'s Start')),
                  ),




                  Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            const Padding(padding: EdgeInsets.all(8)),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        contentPadding:
                                        const EdgeInsets.symmetric(vertical: 5),

                                        suffixIcon: const Icon(
                                          Icons.search,
                                          color: Color.fromARGB(255, 107, 105, 105),
                                        ),
                                        hintText: "  Dogecoin to the Moon...",
                                        hintStyle: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            fontFamily: 'Nunito'),

                                        focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(255, 178, 177, 183)),
                                        ),
                                        // border: ,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color.fromARGB(255, 201, 195, 195)),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        // border:
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromARGB(255, 217, 81, 63)),
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(5),

                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Latest News",
                                    style:
                                    TextStyle(fontFamily: 'RobotoSlab', fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "see all",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Nunito',
                                            color: Colors.blue),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        size: 15,
                                        color: Colors.blue,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  const Padding(padding: EdgeInsets.all(10)),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Stack(children: [
                                      Image(
                                        image : NetworkImage('https://s3-alpha-sig.figma.com/img/1b25/3b61/593c0eac981b4da390568868d72bc803?Expires=1694995200&Signature=PS32ClWsFiofWRc66zuF1wnNUgZ2sVUYyjc9tl5ycr1AFOo2TIVhJTimwN~0QeGH8-757jLy5pyoUgSWxJLG5JpRMQKd0Wmz11gJJTwMU5IFXPtQ2oRHcjqIXZg0dNZxFFO2TocAXwPKsgCKA269YXeUM9DtH43S3T8SMlbcD~4-TbHmEd3gB9ZT63D3YkLEkn-eL-Z98YBQaboiEIK3DJTc5YqlGFEhGeVk-7n7SLZeUFt4DcAnQ9uKTWOm5BcmMZC9qpnl1BjyCPsGj9mA-ZE99M48Qlvtigf0QvQ8jvbaE4Mji5vXl4MIZe92J2gVyi7QmOcnsTF7F2rKZ8P2eg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                        width: 321,
                                        height: 240,
                                        fit: BoxFit.cover,
                                      ),
                                      const Positioned(
                                          top: 80,
                                          left: 20,
                                          child: Text("by Ryan Browne",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: 'Nunito',
                                              ))),
                                      const Positioned(
                                        top: 95,
                                        left: 20,
                                        right: 20,
                                        child: Text(
                                          "Crypto investors should be prepared to lose all their money, BOE governor says",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'RobotoSlab',
                                              color: Colors.white),
                                        ),
                                      ),
                                      const Positioned(
                                        top: 200,
                                        left: 20,
                                        right: 20,
                                        child: Text(
                                          "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 10),
                                        ),
                                      )
                                    ]),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Stack(
                                      children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child:  Image(
                                        image : NetworkImage('https://s3-alpha-sig.figma.com/img/5baa/1281/3c0e6239a2ea7f559e4ef62cf9f3e29c?Expires=1694995200&Signature=ayzXKYqDGFAk2ziVRCJF5Oe185TgH0u7XCUm9nIFsmWnSbS9eUiZ3lNK0aWmRPeEl9chusl7Zn9xf2I-VyfxOFl89u307YAgwrAG1ATYW4LMl~lG~u3Z81Eqp4eTPv2ho4-7mjvrEh2KTkP0SPIoog3onTy0pOGh3VtEipJTi2mBlmMAn8BsC0BTloX-ACZ6XWheOZQbj5RYQwegmVVnukt4zXK3eLXt16XiDNFUoGjWORSDMRyuyGEDNL7YCnmfKsGHoqrKTvoxexWfwAXsW0AOv0o5CxPqPuf7F2XQjKjq3t-Imx7bXQWchsYvh4AM2p87Xyg3qublxsnaI4Us~g__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                                        width: 321,
                                        height: 240,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Positioned(
                                      top: 80,
                                      left: 20,
                                      right: 20,
                                      child: Text("by Ryan Browne",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontFamily: 'Nunito',
                                          )),
                                    ),
                                    const Positioned(
                                      top: 95,
                                      left: 20,
                                      right: 20,
                                      child: Text(
                                        "Asia-Pacific markets trade broadly higher, oil prices climb",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'RobotoSlab',
                                            color: Colors.white),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 180,
                                      left: 20,
                                      right: 20,
                                      child: Text(
                                        "Stock markets in Asia-Pacific were broadly higher on Monday following “a big miss” in the April U.S. jobs report, while oil futures advanced.",
                                        style:
                                        TextStyle(color: Colors.white, fontSize: 10),
                                      ),
                                    )
                                  ]),
                                ],
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  const Padding(padding: EdgeInsets.all(10)),
                                  OutlinedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(
                                            const Color.fromARGB(255, 217, 81, 63)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              side:
                                              const BorderSide(color: Color(0xFFF0F1FA)),
                                              borderRadius: BorderRadius.circular(30),
                                            )),
                                      ),
                                      child: const Text(
                                        "Healthy",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'Nunito'),
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  OutlinedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(
                                            const Color.fromARGB(255, 255, 255, 255)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              side:
                                              const BorderSide(color: Color(0xFFF0F1FA)),
                                              borderRadius: BorderRadius.circular(30),
                                            )),
                                      ),
                                      child: const Text(
                                        "Technology",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Nunito'),
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  OutlinedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(
                                            const Color.fromARGB(255, 255, 255, 255)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              side:
                                              const BorderSide(color: Color(0xFFF0F1FA)),
                                              borderRadius: BorderRadius.circular(30),
                                            )),
                                      ),
                                      child: const Text(
                                        "Finance",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Nunito'),
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    child: OutlinedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(
                                              const Color.fromARGB(255, 255, 255, 255)),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    color: Color(0xFFF0F1FA)),
                                                borderRadius: BorderRadius.circular(30),
                                              )),
                                        ),
                                        child: const Text(
                                          "Arts",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontFamily: 'Nunito'),
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  OutlinedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(
                                            const Color.fromARGB(255, 255, 255, 255)),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              side:
                                              const BorderSide(color: Color(0xFFF0F1FA)),
                                              borderRadius: BorderRadius.circular(30),
                                            )),
                                      ),
                                      child: const Text(
                                        "Sports",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Nunito'),
                                      )),
                                ],
                              ),
                            ),
                            BlocBuilder<GetNewsCubit, GetNewsState>(
                              builder: (context, state) {
                                if (state is GetNewsInitial) {
                                  return const Center(
                                    child:
                                    Text("Please press the button to get news"),
                                  );
                                } else if (state is GetNewsLoading) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                } else if (state is GetNewsSuccess) {
                                  return ListView.separated(
                                    separatorBuilder: (context, index) =>
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute<void>(
                                            builder: (BuildContext context) =>
                                                ThirdtScreen(
                                                  index: index,
                                                ),
                                          ),
                                        );
                                      },
                                      child: scrollcolumn(
                                          context: context,
                                          image: NetworkImage(state.response
                                              .articles[index].urlToImage ??
                                              "https://media.istockphoto.com/id/1264074047/vector/breaking-news-background.jpg?s=612x612&w=0&k=20&c=C5BryvaM-X1IiQtdyswR3HskyIZCqvNRojrCRLoTN0Q="),
                                          text1: state.response.articles[index].title,
                                          text2: 'Matt Villano\n',
                                          text3: 'Sunday, 9 May 2021\n'),
                                    ),
                                    itemCount: state.response.articles.length,
                                  );
                                } else {
                                  return const Center(
                                      child: Text("Somethinge went wrong"));
                                }
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  )







                ],
              ),
            ),












       );
  }
}