{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dynamic_rendering && VK_KHR_fragment_shading_rate

module Vulkan.Types.Struct.VkRenderingFragmentShadingRateAttachmentInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkRenderingFragmentShadingRateAttachmentInfoKHR" #-} VkRenderingFragmentShadingRateAttachmentInfoKHR =
       VkRenderingFragmentShadingRateAttachmentInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageView :: VkImageView
         , imageLayout :: VkImageLayout
         , shadingRateAttachmentTexelSize :: VkExtent2D
         }

instance Storable VkRenderingFragmentShadingRateAttachmentInfoKHR where
  sizeOf    _ = #{size      VkRenderingFragmentShadingRateAttachmentInfoKHR}
  alignment _ = #{alignment VkRenderingFragmentShadingRateAttachmentInfoKHR}

  peek ptr = 
    VkRenderingFragmentShadingRateAttachmentInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"imageView" ptr)
       <*> peek (offset @"imageLayout" ptr)
       <*> peek (offset @"shadingRateAttachmentTexelSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageView" ptr val
    pokeField @"imageLayout" ptr val
    pokeField @"shadingRateAttachmentTexelSize" ptr val

instance Offset "sType" VkRenderingFragmentShadingRateAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingFragmentShadingRateAttachmentInfoKHR, sType}

instance Offset "pNext" VkRenderingFragmentShadingRateAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingFragmentShadingRateAttachmentInfoKHR, pNext}

instance Offset "imageView" VkRenderingFragmentShadingRateAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingFragmentShadingRateAttachmentInfoKHR, imageView}

instance Offset "imageLayout" VkRenderingFragmentShadingRateAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingFragmentShadingRateAttachmentInfoKHR, imageLayout}

instance Offset "shadingRateAttachmentTexelSize" VkRenderingFragmentShadingRateAttachmentInfoKHR where
  rawOffset = #{offset VkRenderingFragmentShadingRateAttachmentInfoKHR, shadingRateAttachmentTexelSize}

#else

module Vulkan.Types.Struct.VkRenderingFragmentShadingRateAttachmentInfoKHR where

#endif