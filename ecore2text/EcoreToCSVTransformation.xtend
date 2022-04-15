package ecore2text
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.emf.ecore.xmi.impl.EcoreResourceFactoryImpl
import org.eclipse.emf.ecore.EPackage

class EcoreToCSVTransformation {
	
	def String generate(String filePath) {
		val resourceSet = new ResourceSetImpl;
		resourceSet.getResourceFactoryRegistry().getExtensionToFactoryMap().put(
			"ecore", new EcoreResourceFactoryImpl
		);
		val resource = resourceSet.getResource(
			URI.createFileURI(filePath), true
		);
		
		val model = resource.getContents().get(0) as EPackage;
		return generateCode(model);
	}
	
	def String generateCode(EPackage ePackage) {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
}