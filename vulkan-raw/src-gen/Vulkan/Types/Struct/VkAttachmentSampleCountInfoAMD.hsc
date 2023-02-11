{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dynamic_rendering && VK_AMD_mixed_attachment_samples

module Vulkan.Types.Struct.VkAttachmentSampleCountInfoAMD where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkAttachmentSampleCountInfoAMD" #-} VkAttachmentSampleCountInfoAMD =
       VkAttachmentSampleCountInfoAMD
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , colorAttachmentCount :: #{type uint32_t}
         , pColorAttachmentSamples :: Ptr VkSampleCountFlagBits
         , depthStencilAttachmentSamples :: VkSampleCountFlagBits
         }

instance Storable VkAttachmentSampleCountInfoAMD where
  sizeOf    _ = #{size      struct VkAttachmentSampleCountInfoAMD}
  alignment _ = #{alignment struct VkAttachmentSampleCountInfoAMD}

  peek ptr = 
    VkAttachmentSampleCountInfoAMD
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"colorAttachmentCount" ptr)
       <*> peek (offset @"pColorAttachmentSamples" ptr)
       <*> peek (offset @"depthStencilAttachmentSamples" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"colorAttachmentCount" ptr val
    pokeField @"pColorAttachmentSamples" ptr val
    pokeField @"depthStencilAttachmentSamples" ptr val

instance Offset "sType" VkAttachmentSampleCountInfoAMD where
  rawOffset = #{offset struct VkAttachmentSampleCountInfoAMD, sType}

instance Offset "pNext" VkAttachmentSampleCountInfoAMD where
  rawOffset = #{offset struct VkAttachmentSampleCountInfoAMD, pNext}

instance Offset "colorAttachmentCount" VkAttachmentSampleCountInfoAMD where
  rawOffset = #{offset struct VkAttachmentSampleCountInfoAMD, colorAttachmentCount}

instance Offset "pColorAttachmentSamples" VkAttachmentSampleCountInfoAMD where
  rawOffset = #{offset struct VkAttachmentSampleCountInfoAMD, pColorAttachmentSamples}

instance Offset "depthStencilAttachmentSamples" VkAttachmentSampleCountInfoAMD where
  rawOffset = #{offset struct VkAttachmentSampleCountInfoAMD, depthStencilAttachmentSamples}

#else

module Vulkan.Types.Struct.VkAttachmentSampleCountInfoAMD where

#endif