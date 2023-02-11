{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_fragment_shading_rate

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRatePropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceFragmentShadingRatePropertiesKHR" #-} VkPhysicalDeviceFragmentShadingRatePropertiesKHR =
       VkPhysicalDeviceFragmentShadingRatePropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , minFragmentShadingRateAttachmentTexelSize :: VkExtent2D
         , maxFragmentShadingRateAttachmentTexelSize :: VkExtent2D
         , maxFragmentShadingRateAttachmentTexelSizeAspectRatio :: #{type uint32_t}
         , primitiveFragmentShadingRateWithMultipleViewports :: VkBool32
         , layeredShadingRateAttachments :: VkBool32
         , fragmentShadingRateNonTrivialCombinerOps :: VkBool32
         , maxFragmentSize :: VkExtent2D
         , maxFragmentSizeAspectRatio :: #{type uint32_t}
         , maxFragmentShadingRateCoverageSamples :: #{type uint32_t}
         , maxFragmentShadingRateRasterizationSamples :: VkSampleCountFlagBits
         , fragmentShadingRateWithShaderDepthStencilWrites :: VkBool32
         , fragmentShadingRateWithSampleMask :: VkBool32
         , fragmentShadingRateWithShaderSampleMask :: VkBool32
         , fragmentShadingRateWithConservativeRasterization :: VkBool32
         , fragmentShadingRateWithFragmentShaderInterlock :: VkBool32
         , fragmentShadingRateWithCustomSampleLocations :: VkBool32
         , fragmentShadingRateStrictMultiplyCombiner :: VkBool32
         }

instance Storable VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  sizeOf    _ = #{size      struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR}
  alignment _ = #{alignment struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR}

  peek ptr = 
    VkPhysicalDeviceFragmentShadingRatePropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"minFragmentShadingRateAttachmentTexelSize" ptr)
       <*> peek (offset @"maxFragmentShadingRateAttachmentTexelSize" ptr)
       <*> peek (offset @"maxFragmentShadingRateAttachmentTexelSizeAspectRatio" ptr)
       <*> peek (offset @"primitiveFragmentShadingRateWithMultipleViewports" ptr)
       <*> peek (offset @"layeredShadingRateAttachments" ptr)
       <*> peek (offset @"fragmentShadingRateNonTrivialCombinerOps" ptr)
       <*> peek (offset @"maxFragmentSize" ptr)
       <*> peek (offset @"maxFragmentSizeAspectRatio" ptr)
       <*> peek (offset @"maxFragmentShadingRateCoverageSamples" ptr)
       <*> peek (offset @"maxFragmentShadingRateRasterizationSamples" ptr)
       <*> peek (offset @"fragmentShadingRateWithShaderDepthStencilWrites" ptr)
       <*> peek (offset @"fragmentShadingRateWithSampleMask" ptr)
       <*> peek (offset @"fragmentShadingRateWithShaderSampleMask" ptr)
       <*> peek (offset @"fragmentShadingRateWithConservativeRasterization" ptr)
       <*> peek (offset @"fragmentShadingRateWithFragmentShaderInterlock" ptr)
       <*> peek (offset @"fragmentShadingRateWithCustomSampleLocations" ptr)
       <*> peek (offset @"fragmentShadingRateStrictMultiplyCombiner" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"minFragmentShadingRateAttachmentTexelSize" ptr val
    pokeField @"maxFragmentShadingRateAttachmentTexelSize" ptr val
    pokeField @"maxFragmentShadingRateAttachmentTexelSizeAspectRatio" ptr val
    pokeField @"primitiveFragmentShadingRateWithMultipleViewports" ptr val
    pokeField @"layeredShadingRateAttachments" ptr val
    pokeField @"fragmentShadingRateNonTrivialCombinerOps" ptr val
    pokeField @"maxFragmentSize" ptr val
    pokeField @"maxFragmentSizeAspectRatio" ptr val
    pokeField @"maxFragmentShadingRateCoverageSamples" ptr val
    pokeField @"maxFragmentShadingRateRasterizationSamples" ptr val
    pokeField @"fragmentShadingRateWithShaderDepthStencilWrites" ptr val
    pokeField @"fragmentShadingRateWithSampleMask" ptr val
    pokeField @"fragmentShadingRateWithShaderSampleMask" ptr val
    pokeField @"fragmentShadingRateWithConservativeRasterization" ptr val
    pokeField @"fragmentShadingRateWithFragmentShaderInterlock" ptr val
    pokeField @"fragmentShadingRateWithCustomSampleLocations" ptr val
    pokeField @"fragmentShadingRateStrictMultiplyCombiner" ptr val

instance Offset "sType" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, pNext}

instance Offset "minFragmentShadingRateAttachmentTexelSize" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, minFragmentShadingRateAttachmentTexelSize}

instance Offset "maxFragmentShadingRateAttachmentTexelSize" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, maxFragmentShadingRateAttachmentTexelSize}

instance Offset "maxFragmentShadingRateAttachmentTexelSizeAspectRatio" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, maxFragmentShadingRateAttachmentTexelSizeAspectRatio}

instance Offset "primitiveFragmentShadingRateWithMultipleViewports" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, primitiveFragmentShadingRateWithMultipleViewports}

instance Offset "layeredShadingRateAttachments" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, layeredShadingRateAttachments}

instance Offset "fragmentShadingRateNonTrivialCombinerOps" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, fragmentShadingRateNonTrivialCombinerOps}

instance Offset "maxFragmentSize" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, maxFragmentSize}

instance Offset "maxFragmentSizeAspectRatio" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, maxFragmentSizeAspectRatio}

instance Offset "maxFragmentShadingRateCoverageSamples" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, maxFragmentShadingRateCoverageSamples}

instance Offset "maxFragmentShadingRateRasterizationSamples" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, maxFragmentShadingRateRasterizationSamples}

instance Offset "fragmentShadingRateWithShaderDepthStencilWrites" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, fragmentShadingRateWithShaderDepthStencilWrites}

instance Offset "fragmentShadingRateWithSampleMask" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, fragmentShadingRateWithSampleMask}

instance Offset "fragmentShadingRateWithShaderSampleMask" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, fragmentShadingRateWithShaderSampleMask}

instance Offset "fragmentShadingRateWithConservativeRasterization" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, fragmentShadingRateWithConservativeRasterization}

instance Offset "fragmentShadingRateWithFragmentShaderInterlock" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, fragmentShadingRateWithFragmentShaderInterlock}

instance Offset "fragmentShadingRateWithCustomSampleLocations" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, fragmentShadingRateWithCustomSampleLocations}

instance Offset "fragmentShadingRateStrictMultiplyCombiner" VkPhysicalDeviceFragmentShadingRatePropertiesKHR where
  rawOffset = #{offset struct VkPhysicalDeviceFragmentShadingRatePropertiesKHR, fragmentShadingRateStrictMultiplyCombiner}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRatePropertiesKHR where

#endif