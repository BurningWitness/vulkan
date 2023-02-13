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
  sizeOf    _ = #{size      VkFragmentShadingRateAttachmentInfoKHR}
  alignment _ = #{alignment VkFragmentShadingRateAttachmentInfoKHR}

  peek ptr = 
    VkFragmentShadingRateAttachmentInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pFragmentShadingRateAttachment" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"shadingRateAttachmentTexelSize" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pFragmentShadingRateAttachment" ptr val
    pokeField @"shadingRateAttachmentTexelSize" ptr val

instance Offset "sType" VkFragmentShadingRateAttachmentInfoKHR where
  rawOffset = #{offset VkFragmentShadingRateAttachmentInfoKHR, sType}

instance Offset "pNext" VkFragmentShadingRateAttachmentInfoKHR where
  rawOffset = #{offset VkFragmentShadingRateAttachmentInfoKHR, pNext}

instance Offset "pFragmentShadingRateAttachment" VkFragmentShadingRateAttachmentInfoKHR where
  rawOffset = #{offset VkFragmentShadingRateAttachmentInfoKHR, pFragmentShadingRateAttachment}

instance Offset "shadingRateAttachmentTexelSize" VkFragmentShadingRateAttachmentInfoKHR where
  rawOffset = #{offset VkFragmentShadingRateAttachmentInfoKHR, shadingRateAttachmentTexelSize}

#else

module Vulkan.Types.Struct.VkFragmentShadingRateAttachmentInfoKHR where

#endif