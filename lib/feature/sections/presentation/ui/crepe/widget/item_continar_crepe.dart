
import 'package:flutter/material.dart';
import 'package:slice_app/core/model/crepe_model.dart';
import 'package:slice_app/core/theme/app_color.dart';
import 'package:slice_app/feature/product_details/presentation/ui/product_details.dart';

class ItemContinarCrepe extends StatelessWidget {
 final CrepeModel crepe;
  const ItemContinarCrepe({super.key,required this.crepe});

  @override
  Widget build(BuildContext context) {
    return
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Column(
            children: [
              Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                       color: const Color.fromARGB(200, 45, 45, 45),blurRadius: 15,spreadRadius: 1,offset: Offset(6, 10),
                   )],
                      color:AppColor.lightgray,
                      borderRadius: BorderRadius.circular( 50)
                    ),
                    child: Align(alignment: AlignmentGeometry.centerLeft,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: Image.network(crepe.imgurl).image,
                          ),
                          SizedBox(width: 10,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ 
                              Text(crepe.name,
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                              ),
                              
                          SizedBox(height: 10,),
                         Text(crepe.details,style: TextStyle(fontSize: 12),overflow: TextOverflow.ellipsis,maxLines: 2,
                            
                          ),
                          
                            ],
                          ),
                           Spacer(),
                          Align(alignment: AlignmentGeometry.bottomRight,
                            child: Text(crepe.price.toString() ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),)),
                          Spacer(),
                          InkWell(
                             onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>ProductDetails()  ),
                      );
                      },
                            child: Container(alignment: Alignment.centerRight,
                                              width: 50,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                boxShadow: [BoxShadow(
                                                   color: Colors.grey,blurRadius: 8,spreadRadius: 1,offset: Offset(0, 10),
                                               )],
                                                color: AppColor.primary,
                                                borderRadius: BorderRadius.circular(  12),
                                                
                                              ),
                                              child:
                                               Center(child: Text("buy ",style: TextStyle(fontSize: 15,
                                        fontWeight: FontWeight.bold),)),
                                              
                                            ),
                                            

                          ),
                          SizedBox(width: 12,)
                          
                        ],
                      ),
                    ),
                  )
             
          
            ],
          ),
        );
      
  }
}