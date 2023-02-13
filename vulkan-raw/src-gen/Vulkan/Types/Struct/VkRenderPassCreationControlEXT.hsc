{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_subpass_merge_feedback

module Vulkan.Types.Struct.VkRenderPassCreationControlEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassCreationControlEXT" #-} VkRenderPassCreationControlEXT =
       VkRenderPassCreationControlEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , disallowMerging :: VkBool32
         }

instance Storable VkRenderPassCreationControlEXT where
  sizeOf    _ = #{size      VkRenderPassCreationControlEXT}
  alignment _ = #{alignment VkRenderPassCreationControlEXT}

  peek ptr = 
    VkRenderPassCreationControlEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"disallowMerging" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"disallowMerging" ptr val

instance Offset "sType" VkRenderPassCreationControlEXT where
  rawOffset = #{offset VkRenderPassCreationControlEXT, sType}

instance Offset "pNext" VkRenderPassCreationControlEXT where
  rawOffset = #{offset VkRenderPassCreationControlEXT, pNext}

instance Offset "disallowMerging" VkRenderPassCreationControlEXT where
  rawOffset = #{offset VkRenderPassCreationControlEXT, disallowMerging}

#else

module Vulkan.Types.Struct.VkRenderPassCreationControlEXT where

#endif