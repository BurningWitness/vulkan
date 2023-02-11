{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_portability_subset

module Vulkan.Types.Struct.VkPhysicalDevicePortabilitySubsetFeaturesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDevicePortabilitySubsetFeaturesKHR" #-} VkPhysicalDevicePortabilitySubsetFeaturesKHR =
       VkPhysicalDevicePortabilitySubsetFeaturesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , constantAlphaColorBlendFactors :: VkBool32
         , events :: VkBool32
         , imageViewFormatReinterpretation :: VkBool32
         , imageViewFormatSwizzle :: VkBool32
         , imageView2DOn3DImage :: VkBool32
         , multisampleArrayImage :: VkBool32
         , mutableComparisonSamplers :: VkBool32
         , pointPolygons :: VkBool32
         , samplerMipLodBias :: VkBool32
         , separateStencilMaskRef :: VkBool32
         , shaderSampleRateInterpolationFunctions :: VkBool32
         , tessellationIsolines :: VkBool32
         , tessellationPointMode :: VkBool32
         , triangleFans :: VkBool32
         , vertexAttributeAccessBeyondStride :: VkBool32
         }

instance Storable VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  sizeOf    _ = #{size      struct VkPhysicalDevicePortabilitySubsetFeaturesKHR}
  alignment _ = #{alignment struct VkPhysicalDevicePortabilitySubsetFeaturesKHR}

  peek ptr = 
    VkPhysicalDevicePortabilitySubsetFeaturesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"constantAlphaColorBlendFactors" ptr)
       <*> peek (offset @"events" ptr)
       <*> peek (offset @"imageViewFormatReinterpretation" ptr)
       <*> peek (offset @"imageViewFormatSwizzle" ptr)
       <*> peek (offset @"imageView2DOn3DImage" ptr)
       <*> peek (offset @"multisampleArrayImage" ptr)
       <*> peek (offset @"mutableComparisonSamplers" ptr)
       <*> peek (offset @"pointPolygons" ptr)
       <*> peek (offset @"samplerMipLodBias" ptr)
       <*> peek (offset @"separateStencilMaskRef" ptr)
       <*> peek (offset @"shaderSampleRateInterpolationFunctions" ptr)
       <*> peek (offset @"tessellationIsolines" ptr)
       <*> peek (offset @"tessellationPointMode" ptr)
       <*> peek (offset @"triangleFans" ptr)
       <*> peek (offset @"vertexAttributeAccessBeyondStride" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"constantAlphaColorBlendFactors" ptr val
    pokeField @"events" ptr val
    pokeField @"imageViewFormatReinterpretation" ptr val
    pokeField @"imageViewFormatSwizzle" ptr val
    pokeField @"imageView2DOn3DImage" ptr val
    pokeField @"multisampleArrayImage" ptr val
    pokeField @"mutableComparisonSamplers" ptr val
    pokeField @"pointPolygons" ptr val
    pokeField @"samplerMipLodBias" ptr val
    pokeField @"separateStencilMaskRef" ptr val
    pokeField @"shaderSampleRateInterpolationFunctions" ptr val
    pokeField @"tessellationIsolines" ptr val
    pokeField @"tessellationPointMode" ptr val
    pokeField @"triangleFans" ptr val
    pokeField @"vertexAttributeAccessBeyondStride" ptr val

instance Offset "sType" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, sType}

instance Offset "pNext" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, pNext}

instance Offset "constantAlphaColorBlendFactors" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, constantAlphaColorBlendFactors}

instance Offset "events" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, events}

instance Offset "imageViewFormatReinterpretation" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, imageViewFormatReinterpretation}

instance Offset "imageViewFormatSwizzle" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, imageViewFormatSwizzle}

instance Offset "imageView2DOn3DImage" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, imageView2DOn3DImage}

instance Offset "multisampleArrayImage" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, multisampleArrayImage}

instance Offset "mutableComparisonSamplers" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, mutableComparisonSamplers}

instance Offset "pointPolygons" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, pointPolygons}

instance Offset "samplerMipLodBias" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, samplerMipLodBias}

instance Offset "separateStencilMaskRef" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, separateStencilMaskRef}

instance Offset "shaderSampleRateInterpolationFunctions" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, shaderSampleRateInterpolationFunctions}

instance Offset "tessellationIsolines" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, tessellationIsolines}

instance Offset "tessellationPointMode" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, tessellationPointMode}

instance Offset "triangleFans" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, triangleFans}

instance Offset "vertexAttributeAccessBeyondStride" VkPhysicalDevicePortabilitySubsetFeaturesKHR where
  rawOffset = #{offset struct VkPhysicalDevicePortabilitySubsetFeaturesKHR, vertexAttributeAccessBeyondStride}

#else

module Vulkan.Types.Struct.VkPhysicalDevicePortabilitySubsetFeaturesKHR where

#endif