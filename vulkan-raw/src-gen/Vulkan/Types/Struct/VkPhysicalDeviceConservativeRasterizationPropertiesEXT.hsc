{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_conservative_rasterization

module Vulkan.Types.Struct.VkPhysicalDeviceConservativeRasterizationPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceConservativeRasterizationPropertiesEXT" #-} VkPhysicalDeviceConservativeRasterizationPropertiesEXT =
       VkPhysicalDeviceConservativeRasterizationPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , primitiveOverestimationSize :: #{type float} -- ^ The size in pixels the primitive is enlarged at each edge during conservative rasterization
         , maxExtraPrimitiveOverestimationSize :: #{type float} -- ^ The maximum additional overestimation the client can specify in the pipeline state
         , extraPrimitiveOverestimationSizeGranularity :: #{type float} -- ^ The granularity of extra overestimation sizes the implementations supports between 0 and maxExtraOverestimationSize
         , primitiveUnderestimation :: VkBool32 -- ^ true if the implementation supports conservative rasterization underestimation mode
         , conservativePointAndLineRasterization :: VkBool32 -- ^ true if conservative rasterization also applies to points and lines
         , degenerateTrianglesRasterized :: VkBool32 -- ^ true if degenerate triangles (those with zero area after snap) are rasterized
         , degenerateLinesRasterized :: VkBool32 -- ^ true if degenerate lines (those with zero length after snap) are rasterized
         , fullyCoveredFragmentShaderInputVariable :: VkBool32 -- ^ true if the implementation supports the FullyCoveredEXT SPIR-V builtin fragment shader input variable
         , conservativeRasterizationPostDepthCoverage :: VkBool32 -- ^ true if the implementation supports both conservative rasterization and post depth coverage sample coverage mask
         }

instance Storable VkPhysicalDeviceConservativeRasterizationPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceConservativeRasterizationPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceConservativeRasterizationPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceConservativeRasterizationPropertiesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"primitiveOverestimationSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxExtraPrimitiveOverestimationSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extraPrimitiveOverestimationSizeGranularity" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"primitiveUnderestimation" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"conservativePointAndLineRasterization" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"degenerateTrianglesRasterized" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"degenerateLinesRasterized" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fullyCoveredFragmentShaderInputVariable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"conservativeRasterizationPostDepthCoverage" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"primitiveOverestimationSize" ptr val
    pokeField @"maxExtraPrimitiveOverestimationSize" ptr val
    pokeField @"extraPrimitiveOverestimationSizeGranularity" ptr val
    pokeField @"primitiveUnderestimation" ptr val
    pokeField @"conservativePointAndLineRasterization" ptr val
    pokeField @"degenerateTrianglesRasterized" ptr val
    pokeField @"degenerateLinesRasterized" ptr val
    pokeField @"fullyCoveredFragmentShaderInputVariable" ptr val
    pokeField @"conservativeRasterizationPostDepthCoverage" ptr val

instance Offset "sType" VkPhysicalDeviceConservativeRasterizationPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceConservativeRasterizationPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceConservativeRasterizationPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceConservativeRasterizationPropertiesEXT, pNext}

instance Offset "primitiveOverestimationSize" VkPhysicalDeviceConservativeRasterizationPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceConservativeRasterizationPropertiesEXT, primitiveOverestimationSize}

instance Offset "maxExtraPrimitiveOverestimationSize" VkPhysicalDeviceConservativeRasterizationPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceConservativeRasterizationPropertiesEXT, maxExtraPrimitiveOverestimationSize}

instance Offset "extraPrimitiveOverestimationSizeGranularity" VkPhysicalDeviceConservativeRasterizationPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceConservativeRasterizationPropertiesEXT, extraPrimitiveOverestimationSizeGranularity}

instance Offset "primitiveUnderestimation" VkPhysicalDeviceConservativeRasterizationPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceConservativeRasterizationPropertiesEXT, primitiveUnderestimation}

instance Offset "conservativePointAndLineRasterization" VkPhysicalDeviceConservativeRasterizationPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceConservativeRasterizationPropertiesEXT, conservativePointAndLineRasterization}

instance Offset "degenerateTrianglesRasterized" VkPhysicalDeviceConservativeRasterizationPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceConservativeRasterizationPropertiesEXT, degenerateTrianglesRasterized}

instance Offset "degenerateLinesRasterized" VkPhysicalDeviceConservativeRasterizationPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceConservativeRasterizationPropertiesEXT, degenerateLinesRasterized}

instance Offset "fullyCoveredFragmentShaderInputVariable" VkPhysicalDeviceConservativeRasterizationPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceConservativeRasterizationPropertiesEXT, fullyCoveredFragmentShaderInputVariable}

instance Offset "conservativeRasterizationPostDepthCoverage" VkPhysicalDeviceConservativeRasterizationPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceConservativeRasterizationPropertiesEXT, conservativeRasterizationPostDepthCoverage}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceConservativeRasterizationPropertiesEXT where

#endif