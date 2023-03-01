{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_depth_stencil_resolve

module Vulkan.Types.Struct.VkSubpassDescriptionDepthStencilResolveKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkResolveModeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAttachmentReference2



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassDescriptionDepthStencilResolveKHR" #-} VkSubpassDescriptionDepthStencilResolveKHR =
       VkSubpassDescriptionDepthStencilResolveKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , depthResolveMode :: VkResolveModeFlagBits -- ^ depth resolve mode
         , stencilResolveMode :: VkResolveModeFlagBits -- ^ stencil resolve mode
         , pDepthStencilResolveAttachment :: Ptr VkAttachmentReference2 -- ^ depth/stencil resolve attachment
         }

instance Storable VkSubpassDescriptionDepthStencilResolveKHR where
  sizeOf    _ = #{size      VkSubpassDescriptionDepthStencilResolveKHR}
  alignment _ = #{alignment VkSubpassDescriptionDepthStencilResolveKHR}

  peek ptr = 
    VkSubpassDescriptionDepthStencilResolveKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depthResolveMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stencilResolveMode" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDepthStencilResolveAttachment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"depthResolveMode" ptr val
    pokeField @"stencilResolveMode" ptr val
    pokeField @"pDepthStencilResolveAttachment" ptr val

instance Offset "sType" VkSubpassDescriptionDepthStencilResolveKHR where
  rawOffset = #{offset VkSubpassDescriptionDepthStencilResolveKHR, sType}

instance Offset "pNext" VkSubpassDescriptionDepthStencilResolveKHR where
  rawOffset = #{offset VkSubpassDescriptionDepthStencilResolveKHR, pNext}

instance Offset "depthResolveMode" VkSubpassDescriptionDepthStencilResolveKHR where
  rawOffset = #{offset VkSubpassDescriptionDepthStencilResolveKHR, depthResolveMode}

instance Offset "stencilResolveMode" VkSubpassDescriptionDepthStencilResolveKHR where
  rawOffset = #{offset VkSubpassDescriptionDepthStencilResolveKHR, stencilResolveMode}

instance Offset "pDepthStencilResolveAttachment" VkSubpassDescriptionDepthStencilResolveKHR where
  rawOffset = #{offset VkSubpassDescriptionDepthStencilResolveKHR, pDepthStencilResolveAttachment}

#else

module Vulkan.Types.Struct.VkSubpassDescriptionDepthStencilResolveKHR where

#endif