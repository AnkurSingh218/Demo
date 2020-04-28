public with sharing class ImageController {
 public String imageURL{get;set;}
   
  public ImageController()
  {
    imageURL='servlet/servlet.ImageServer?id=';
    List< document > documentList=[select name from document];
   
    if(documentList.size()>0)
    {
      imageURL=imageURL+documentList[0].id;
    }
  }
}