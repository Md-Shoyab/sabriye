import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sabriye/app/widgets/gapper.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../controllers/blog_details_controller.dart';

class BlogDetailsView extends GetView<BlogDetailsController> {
  const BlogDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Blogs Details',
          style: TextStyle(
            color: AppColors.themeTextColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.buttonColor,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * .225,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => const RelatedPost()),
              ),
            ),
            const VerticalGap(),
            const Center(child: Text('Dots Indicator')),
            Center(
              child: Container(
                height: 200,
                width: Get.width * .9,
                margin: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(AppAssets.blogImage1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
              ),
              width: Get.width * .9,
              child: const Text(
                'How I Received the Soul Call to Move to Ibiza',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const VerticalGap(),
            const Divider(
              thickness: 1.0,
              color: Colors.grey,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(AppAssets.profileImage),
                  ),
                  const HorizontalGap(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'by Sabriyé Ayana',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        VerticalGap(gap: 8),
                        Text(
                          'Bestselling author, new paradigm business, life & soul mentor, founder of the AkashaHealing™ method and the School of Inner Union',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 1.0,
              color: Colors.grey,
              indent: 20,
              endIndent: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                'Read Time 8 mins',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const VerticalGap(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                '''I think how I ended up living on one of the most famous Balearic Islands in Spain, is one of the most soul-led stories that I have to share.
      
It all started years ago when in 2014 I met who I felt to be the love of my life through our work online, he was someone I almost immediately recognized as my twin soul. There was a lot of back and forth in which we even spent almost two Heavenly weeks together in 2015 in India where he was born and raised. In the end, however, he could not shake the conditioning of his culture and ultimately chose the arranged marriage his family wanted for him.
      
Because he felt he needed to do what his family and culture expected of him, he banished me from his life in 2016 and pretty much cut off all contact, although energetically we remained deeply connected. In late January 2017, I dreamed that he came to make love to me, after which he held me in his arms and told me that he was getting married but that he would love me forever.
      
Two days later I woke up to a rainfall of messages from my team members who had seen pictures online of him preparing for his wedding. When I asked, one of his mates confirmed that he was getting married that day. His friend had not told me before because he didn’t want to be the one to hurt me. Actually, none of his friends wanted to be the one to tell me, so no one did.
      
Because I had already had a year to grieve the loss of this relationship, it wasn’t that difficult to accept his marriage. And after two months I asked myself an important question; ‘What do I want to do with the rest of my life now that my dream of being together happily ever after had gone up in smoke?’
      
‘What does my soul want to create now?’
      
I heard a voice inside me whisper ‘You always wanted to live by the sea. Go to Ibiza! The funny thing was that I had never been to Ibiza, I had only heard of it. I had never been to Spain at all. But because I felt so strongly that this was where I needed to be, I started to research the island.
      
By the end of that month, during a Tony Robbins event in London I spoke to the man in India again, out of the blue he took my call during a break at the event. We hadn’t spoken to each other since 2016. I told him of my plans to move to Ibiza and he said ‘You know what I love the most about you is that when you decide something you make it happen.’ In that phone conversation, he also promised me that even though he didn’t know if he would ever leave his wife that if he did, he would be on a plane to me the very next day. He had been married exactly three months that day.
      
After this conversation, I had to make Ibiza happen of course, but he was right – it is in my nature to be someone that does what they set their mind to do. This was something he felt incapable of because he had been so conditioned to do what pleases others and sacrifice his own needs and desires in the process. So, by June 2017, I hopped on a plane with my youngest kid and my mom off for a weekend in Ibiza just to get a feel for the island. Because I didn’t know the island we ended up in a hotel in San Antonio and I hated it. If you want to see Ibiza at its worst, this is it with loads of drunken tourists and crazy hen parties (bachelorette) filled with gin and throwing hoops on a strapped-on dildo on the bride-to-be’s head. I am not joking.
      
The first night I spent throwing up and crying. Here I was following the voice of my heart and it was horrible there. I really felt led astray by my soul and guides at that moment. The next day we rented a car and drove to other parts of the island that suited us much better and I fell in love with Ibiza. Especially as I walked up the steps of the Castillo de Dalt Vila I heard a happy voice inside me singing ‘I’m home. I’m home….’''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const VerticalGap(gap: 80),
          ],
        ),
      ),
    );
  }
}

class RelatedPost extends StatelessWidget {
  const RelatedPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const VerticalGap(gap: 10),
        Container(
          margin: const EdgeInsets.only(left: 8),
          height: Get.height * .15,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const VerticalGap(gap: 5),
        Container(
          margin: const EdgeInsets.only(left: 10),
          width: 200,
          child: const Text(
            'The Nine Levels of Twin Flames Initiations...',
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        )
      ],
    );
  }
}
