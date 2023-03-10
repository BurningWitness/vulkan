{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkSubpassDescriptionDepthStencilResolve where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkResolveModeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAttachmentReference2



data {-# CTYPE "vulkan/vulkan.h" "VkSubpassDescriptionDepthStencilResolve" #-} VkSubpassDescriptionDepthStencilResolve =
       VkSubpassDescriptionDepthStencilResolve
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , depthResolveMode :: VkResolveModeFlagBits -- ^ depth resolve mode
         , stencilResolveMode :: VkResolveModeFlagBits -- ^ stencil resolve mode
         , pDepthStencilResolveAttachment :: Ptr VkAttachmentReference2 -- ^ depth/stencil resolve attachment
         }

instance Storable VkSubpassDescriptionDepthStencilResolve where
  sizeOf    _ = #{size      VkSubpassDescriptionDepthStencilResolve}
  alignment _ = #{alignment VkSubpassDescriptionDepthStencilResolve}

  peek ptr = 
    VkSubpassDescriptionDepthStencilResolve
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

instance Offset "sType" VkSubpassDescriptionDepthStencilResolve where
  rawOffset = #{offset VkSubpassDescriptionDepthStencilResolve, sType}

instance Offset "pNext" VkSubpassDescriptionDepthStencilResolve where
  rawOffset = #{offset VkSubpassDescriptionDepthStencilResolve, pNext}

instance Offset "depthResolveMode" VkSubpassDescriptionDepthStencilResolve where
  rawOffset = #{offset VkSubpassDescriptionDepthStencilResolve, depthResolveMode}

instance Offset "stencilResolveMode" VkSubpassDescriptionDepthStencilResolve where
  rawOffset = #{offset VkSubpassDescriptionDepthStencilResolve, stencilResolveMode}

instance Offset "pDepthStencilResolveAttachment" VkSubpassDescriptionDepthStencilResolve where
  rawOffset = #{offset VkSubpassDescriptionDepthStencilResolve, pDepthStencilResolveAttachment}

#else

module Vulkan.Types.Struct.VkSubpassDescriptionDepthStencilResolve where

#endif