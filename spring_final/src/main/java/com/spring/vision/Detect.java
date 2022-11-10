package com.spring.vision;

import com.google.cloud.vision.v1.AnnotateImageRequest;
import com.google.cloud.vision.v1.AnnotateImageResponse;
import com.google.cloud.vision.v1.BatchAnnotateImagesResponse;
import com.google.cloud.vision.v1.Feature;
import com.google.cloud.vision.v1.Feature.Type;
import com.google.cloud.vision.v1.Image;
import com.google.cloud.vision.v1.ImageAnnotatorClient;
import com.google.cloud.vision.v1.LocalizedObjectAnnotation;
import com.google.protobuf.ByteString;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Detect {
	
	@RequestMapping(value = "/DetectImg", method = { RequestMethod.POST })
	//@PostMapping("/uploadAjaxImg")
	@ResponseBody
	//	   static
	public String[] detectLocalizedObjects(String filePath) throws IOException {

		String[] object = new String[20];
		int i = 0;
		
		List<AnnotateImageRequest> requests = new ArrayList<>();

		ByteString imgBytes = ByteString.readFrom(new FileInputStream(filePath));

		Image img = Image.newBuilder().setContent(imgBytes).build();
		AnnotateImageRequest request = AnnotateImageRequest.newBuilder()
				.addFeatures(Feature.newBuilder().setType(Type.OBJECT_LOCALIZATION)).setImage(img).build();
		requests.add(request);

	
		try (ImageAnnotatorClient client = ImageAnnotatorClient.create()) {
			// Perform the request
			BatchAnnotateImagesResponse response = client.batchAnnotateImages(requests);
			List<AnnotateImageResponse> responses = response.getResponsesList();

			// Display the results
			for (AnnotateImageResponse res : responses) {
				for (LocalizedObjectAnnotation entity : res.getLocalizedObjectAnnotationsList()) {
					System.out.format("Object name: %s%n", entity.getName());

					object[i] = entity.getName();
					i++;

				}
			}
		}
		return object;
	}

}
