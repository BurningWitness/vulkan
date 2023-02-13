{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state3

module Vulkan.Types.Struct.VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExtendedDynamicState3FeaturesEXT" #-} VkPhysicalDeviceExtendedDynamicState3FeaturesEXT =
       VkPhysicalDeviceExtendedDynamicState3FeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , extendedDynamicState3TessellationDomainOrigin :: VkBool32
         , extendedDynamicState3DepthClampEnable :: VkBool32
         , extendedDynamicState3PolygonMode :: VkBool32
         , extendedDynamicState3RasterizationSamples :: VkBool32
         , extendedDynamicState3SampleMask :: VkBool32
         , extendedDynamicState3AlphaToCoverageEnable :: VkBool32
         , extendedDynamicState3AlphaToOneEnable :: VkBool32
         , extendedDynamicState3LogicOpEnable :: VkBool32
         , extendedDynamicState3ColorBlendEnable :: VkBool32
         , extendedDynamicState3ColorBlendEquation :: VkBool32
         , extendedDynamicState3ColorWriteMask :: VkBool32
         , extendedDynamicState3RasterizationStream :: VkBool32
         , extendedDynamicState3ConservativeRasterizationMode :: VkBool32
         , extendedDynamicState3ExtraPrimitiveOverestimationSize :: VkBool32
         , extendedDynamicState3DepthClipEnable :: VkBool32
         , extendedDynamicState3SampleLocationsEnable :: VkBool32
         , extendedDynamicState3ColorBlendAdvanced :: VkBool32
         , extendedDynamicState3ProvokingVertexMode :: VkBool32
         , extendedDynamicState3LineRasterizationMode :: VkBool32
         , extendedDynamicState3LineStippleEnable :: VkBool32
         , extendedDynamicState3DepthClipNegativeOneToOne :: VkBool32
         , extendedDynamicState3ViewportWScalingEnable :: VkBool32
         , extendedDynamicState3ViewportSwizzle :: VkBool32
         , extendedDynamicState3CoverageToColorEnable :: VkBool32
         , extendedDynamicState3CoverageToColorLocation :: VkBool32
         , extendedDynamicState3CoverageModulationMode :: VkBool32
         , extendedDynamicState3CoverageModulationTableEnable :: VkBool32
         , extendedDynamicState3CoverageModulationTable :: VkBool32
         , extendedDynamicState3CoverageReductionMode :: VkBool32
         , extendedDynamicState3RepresentativeFragmentTestEnable :: VkBool32
         , extendedDynamicState3ShadingRateImageEnable :: VkBool32
         }

instance Storable VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceExtendedDynamicState3FeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceExtendedDynamicState3FeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceExtendedDynamicState3FeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3TessellationDomainOrigin" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3DepthClampEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3PolygonMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3RasterizationSamples" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3SampleMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3AlphaToCoverageEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3AlphaToOneEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3LogicOpEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3ColorBlendEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3ColorBlendEquation" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3ColorWriteMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3RasterizationStream" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3ConservativeRasterizationMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3ExtraPrimitiveOverestimationSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3DepthClipEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3SampleLocationsEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3ColorBlendAdvanced" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3ProvokingVertexMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3LineRasterizationMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3LineStippleEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3DepthClipNegativeOneToOne" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3ViewportWScalingEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3ViewportSwizzle" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3CoverageToColorEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3CoverageToColorLocation" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3CoverageModulationMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3CoverageModulationTableEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3CoverageModulationTable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3CoverageReductionMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3RepresentativeFragmentTestEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extendedDynamicState3ShadingRateImageEnable" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"extendedDynamicState3TessellationDomainOrigin" ptr val
    pokeField @"extendedDynamicState3DepthClampEnable" ptr val
    pokeField @"extendedDynamicState3PolygonMode" ptr val
    pokeField @"extendedDynamicState3RasterizationSamples" ptr val
    pokeField @"extendedDynamicState3SampleMask" ptr val
    pokeField @"extendedDynamicState3AlphaToCoverageEnable" ptr val
    pokeField @"extendedDynamicState3AlphaToOneEnable" ptr val
    pokeField @"extendedDynamicState3LogicOpEnable" ptr val
    pokeField @"extendedDynamicState3ColorBlendEnable" ptr val
    pokeField @"extendedDynamicState3ColorBlendEquation" ptr val
    pokeField @"extendedDynamicState3ColorWriteMask" ptr val
    pokeField @"extendedDynamicState3RasterizationStream" ptr val
    pokeField @"extendedDynamicState3ConservativeRasterizationMode" ptr val
    pokeField @"extendedDynamicState3ExtraPrimitiveOverestimationSize" ptr val
    pokeField @"extendedDynamicState3DepthClipEnable" ptr val
    pokeField @"extendedDynamicState3SampleLocationsEnable" ptr val
    pokeField @"extendedDynamicState3ColorBlendAdvanced" ptr val
    pokeField @"extendedDynamicState3ProvokingVertexMode" ptr val
    pokeField @"extendedDynamicState3LineRasterizationMode" ptr val
    pokeField @"extendedDynamicState3LineStippleEnable" ptr val
    pokeField @"extendedDynamicState3DepthClipNegativeOneToOne" ptr val
    pokeField @"extendedDynamicState3ViewportWScalingEnable" ptr val
    pokeField @"extendedDynamicState3ViewportSwizzle" ptr val
    pokeField @"extendedDynamicState3CoverageToColorEnable" ptr val
    pokeField @"extendedDynamicState3CoverageToColorLocation" ptr val
    pokeField @"extendedDynamicState3CoverageModulationMode" ptr val
    pokeField @"extendedDynamicState3CoverageModulationTableEnable" ptr val
    pokeField @"extendedDynamicState3CoverageModulationTable" ptr val
    pokeField @"extendedDynamicState3CoverageReductionMode" ptr val
    pokeField @"extendedDynamicState3RepresentativeFragmentTestEnable" ptr val
    pokeField @"extendedDynamicState3ShadingRateImageEnable" ptr val

instance Offset "sType" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, pNext}

instance Offset "extendedDynamicState3TessellationDomainOrigin" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3TessellationDomainOrigin}

instance Offset "extendedDynamicState3DepthClampEnable" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3DepthClampEnable}

instance Offset "extendedDynamicState3PolygonMode" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3PolygonMode}

instance Offset "extendedDynamicState3RasterizationSamples" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3RasterizationSamples}

instance Offset "extendedDynamicState3SampleMask" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3SampleMask}

instance Offset "extendedDynamicState3AlphaToCoverageEnable" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3AlphaToCoverageEnable}

instance Offset "extendedDynamicState3AlphaToOneEnable" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3AlphaToOneEnable}

instance Offset "extendedDynamicState3LogicOpEnable" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3LogicOpEnable}

instance Offset "extendedDynamicState3ColorBlendEnable" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3ColorBlendEnable}

instance Offset "extendedDynamicState3ColorBlendEquation" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3ColorBlendEquation}

instance Offset "extendedDynamicState3ColorWriteMask" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3ColorWriteMask}

instance Offset "extendedDynamicState3RasterizationStream" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3RasterizationStream}

instance Offset "extendedDynamicState3ConservativeRasterizationMode" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3ConservativeRasterizationMode}

instance Offset "extendedDynamicState3ExtraPrimitiveOverestimationSize" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3ExtraPrimitiveOverestimationSize}

instance Offset "extendedDynamicState3DepthClipEnable" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3DepthClipEnable}

instance Offset "extendedDynamicState3SampleLocationsEnable" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3SampleLocationsEnable}

instance Offset "extendedDynamicState3ColorBlendAdvanced" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3ColorBlendAdvanced}

instance Offset "extendedDynamicState3ProvokingVertexMode" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3ProvokingVertexMode}

instance Offset "extendedDynamicState3LineRasterizationMode" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3LineRasterizationMode}

instance Offset "extendedDynamicState3LineStippleEnable" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3LineStippleEnable}

instance Offset "extendedDynamicState3DepthClipNegativeOneToOne" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3DepthClipNegativeOneToOne}

instance Offset "extendedDynamicState3ViewportWScalingEnable" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3ViewportWScalingEnable}

instance Offset "extendedDynamicState3ViewportSwizzle" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3ViewportSwizzle}

instance Offset "extendedDynamicState3CoverageToColorEnable" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3CoverageToColorEnable}

instance Offset "extendedDynamicState3CoverageToColorLocation" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3CoverageToColorLocation}

instance Offset "extendedDynamicState3CoverageModulationMode" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3CoverageModulationMode}

instance Offset "extendedDynamicState3CoverageModulationTableEnable" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3CoverageModulationTableEnable}

instance Offset "extendedDynamicState3CoverageModulationTable" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3CoverageModulationTable}

instance Offset "extendedDynamicState3CoverageReductionMode" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3CoverageReductionMode}

instance Offset "extendedDynamicState3RepresentativeFragmentTestEnable" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3RepresentativeFragmentTestEnable}

instance Offset "extendedDynamicState3ShadingRateImageEnable" VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceExtendedDynamicState3FeaturesEXT, extendedDynamicState3ShadingRateImageEnable}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExtendedDynamicState3FeaturesEXT where

#endif