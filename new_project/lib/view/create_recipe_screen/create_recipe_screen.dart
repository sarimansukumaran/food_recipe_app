import 'package:flutter/material.dart';
import 'package:new_project/dummy_db.dart';
import 'package:new_project/utilis/constants/color_contants.dart';
import 'package:new_project/view/Global_widgets/customButton.dart';
import 'package:new_project/view/Global_widgets/ingredientsContainerCard.dart';

class CreateRecipeScreen extends StatelessWidget {
  const CreateRecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create Recipe",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: ColorContants.COLOR_MAINBLACK),
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    height: 223,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/13294542/pexels-photo-13294542.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.transparent.withOpacity(.3),
                          child: Icon(
                            Icons.play_arrow,
                            color: ColorContants.TEXT_COLOR,
                            size: 20,
                          )),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: ColorContants.TEXT_COLOR,
                      child: Icon(
                        Icons.edit,
                        color: ColorContants.PRIMARY_COLOR,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter text here',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: ColorContants.PRIMARY_COLOR, width: 1))),
              ),
              SizedBox(
                height: 16,
              ),
              IngredientsContainerCard(
                ingredientImage:
                    "https://images.pexels.com/photos/209206/pexels-photo-209206.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ingredientName: "Serves",
                ingredientQantity: "1",
                haveArrow: true,
              ),
              SizedBox(
                height: 12,
              ),
              IngredientsContainerCard(
                ingredientImage:
                    "https://images.pexels.com/photos/209206/pexels-photo-209206.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ingredientName: "Cook Time",
                ingredientQantity: "45 min",
                haveArrow: true,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Ingredients",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: ColorContants.COLOR_MAINBLACK),
              ),
              SizedBox(
                height: 16,
              ),
              CustomIncredientstextfields(),
              SizedBox(
                height: 16,
              ),
              CustomIncredientstextfields(),
              SizedBox(
                height: 16,
              ),
              CustomIncredientstextfields(),
              SizedBox(
                height: 20,
              ),
              Text(
                "+ Add New Incredients",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: ColorContants.COLOR_MAINBLACK),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "Save my recipes",
                height: 50,
                fontSize: 17,
                width: 335,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIncredientstextfields extends StatelessWidget {
  const CustomIncredientstextfields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'item name',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: ColorContants.COLOR_MAINBLACK,
                    ))),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 3,
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'Quantity',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: ColorContants.COLOR_MAINBLACK,
                    ))),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Icon(Icons.remove)
      ],
    );
  }
}
