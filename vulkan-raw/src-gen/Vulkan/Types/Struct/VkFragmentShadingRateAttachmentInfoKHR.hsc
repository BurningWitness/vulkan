{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_fragment_shading_rate

module Vulkan.Types.Struct.VkFragmentShadingRateAttachmentInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAttachmentReference2
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkFragmentShadingRateAttachmentInfoKHR" #-} VkFragmentShadingRateAttachmentInfoKHR =
       VkFragmentShadingRateAttachmentInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pFragmentShadingRateAttachment :: Ptr VkAttachmentReference2
         , shadingRateAttachmentTexelSize :: VkExtent2D
         }

instance Storable VkFragmentShadingRateAttachmentInfoKHR where
  sizeOf    _ = #{size      struct VkFragmentShadingRateAttachmentInfoKHR}
  alignment _ = #{alignment struct VkFragmentShadingRateAttachmentInfoKHR}

  peek ptr = 
    VkFragmentShadingRateAttachmentInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pFragmentShadingRateAttachment" ptr)
       <*> peek (offset @"shadingRateAttachmentTexelSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pFragmentShadingRateAttachment" ptr val
    pokeField @"shadingRateAttachmentTexelSize" ptr val

instance Offset "sType" VkFragmentShadingRateAttachmentInfoKHR where
  rawOffset = #{offset struct VkFragmentShadingRateAttachmentInfoKHR, sType}

instance Offset "pNext" VkFragmentShadingRateAttachmentInfoKHR where
  rawOffset = #{offset struct VkFragmentShadingRateAttachmentInfoKHR, pNext}

instance Offset "pFragmentShadingRateAttachment" VkFragmentShadingRateAttachmentInfoKHR where
  rawOffset = #{offset struct VkFragmentShadingRateAttachmentInfoKHR, pFragmentShadingRateAttachment}

instance Offset "shadingRateAttachmentTexelSize" VkFragmentShadingRateAttachmentInfoKHR where
  rawOffset = #{offset struct VkFragmentShadingRateAttachmentInfoKHR, shadingRateAttachmentTexelSize}

#else

module Vulkan.Types.Struct.VkFragmentShadingRateAttachmentInfoKHR where

#endif