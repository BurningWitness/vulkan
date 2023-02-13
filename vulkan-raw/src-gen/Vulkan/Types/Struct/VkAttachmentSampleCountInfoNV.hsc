{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dynamic_rendering && VK_NV_framebuffer_mixed_samples

module Vulkan.Types.Struct.VkAttachmentSampleCountInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAttachmentSampleCountInfoNV" #-} VkAttachmentSampleCountInfoNV =
       VkAttachmentSampleCountInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , colorAttachmentCount :: #{type uint32_t}
         , pColorAttachmentSamples :: Ptr VkSampleCountFlagBits
         , depthStencilAttachmentSamples :: VkSampleCountFlagBits
         }

instance Storable VkAttachmentSampleCountInfoNV where
  sizeOf    _ = #{size      VkAttachmentSampleCountInfoNV}
  alignment _ = #{alignment VkAttachmentSampleCountInfoNV}

  peek ptr = 
    VkAttachmentSampleCountInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"colorAttachmentCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pColorAttachmentSamples" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depthStencilAttachmentSamples" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"colorAttachmentCount" ptr val
    pokeField @"pColorAttachmentSamples" ptr val
    pokeField @"depthStencilAttachmentSamples" ptr val

instance Offset "sType" VkAttachmentSampleCountInfoNV where
  rawOffset = #{offset VkAttachmentSampleCountInfoNV, sType}

instance Offset "pNext" VkAttachmentSampleCountInfoNV where
  rawOffset = #{offset VkAttachmentSampleCountInfoNV, pNext}

instance Offset "colorAttachmentCount" VkAttachmentSampleCountInfoNV where
  rawOffset = #{offset VkAttachmentSampleCountInfoNV, colorAttachmentCount}

instance Offset "pColorAttachmentSamples" VkAttachmentSampleCountInfoNV where
  rawOffset = #{offset VkAttachmentSampleCountInfoNV, pColorAttachmentSamples}

instance Offset "depthStencilAttachmentSamples" VkAttachmentSampleCountInfoNV where
  rawOffset = #{offset VkAttachmentSampleCountInfoNV, depthStencilAttachmentSamples}

#else

module Vulkan.Types.Struct.VkAttachmentSampleCountInfoNV where

#endif