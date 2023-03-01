{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkAttachmentSampleCountInfoAMD}
  alignment _ = #{alignment VkAttachmentSampleCountInfoAMD}

  peek ptr = 
    VkAttachmentSampleCountInfoAMD
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

instance Offset "sType" VkAttachmentSampleCountInfoAMD where
  rawOffset = #{offset VkAttachmentSampleCountInfoAMD, sType}

instance Offset "pNext" VkAttachmentSampleCountInfoAMD where
  rawOffset = #{offset VkAttachmentSampleCountInfoAMD, pNext}

instance Offset "colorAttachmentCount" VkAttachmentSampleCountInfoAMD where
  rawOffset = #{offset VkAttachmentSampleCountInfoAMD, colorAttachmentCount}

instance Offset "pColorAttachmentSamples" VkAttachmentSampleCountInfoAMD where
  rawOffset = #{offset VkAttachmentSampleCountInfoAMD, pColorAttachmentSamples}

instance Offset "depthStencilAttachmentSamples" VkAttachmentSampleCountInfoAMD where
  rawOffset = #{offset VkAttachmentSampleCountInfoAMD, depthStencilAttachmentSamples}

#else

module Vulkan.Types.Struct.VkAttachmentSampleCountInfoAMD where

#endif