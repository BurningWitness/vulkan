{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkDescriptorPoolInlineUniformBlockCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorPoolInlineUniformBlockCreateInfo" #-} VkDescriptorPoolInlineUniformBlockCreateInfo =
       VkDescriptorPoolInlineUniformBlockCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxInlineUniformBlockBindings :: #{type uint32_t}
         }

instance Storable VkDescriptorPoolInlineUniformBlockCreateInfo where
  sizeOf    _ = #{size      VkDescriptorPoolInlineUniformBlockCreateInfo}
  alignment _ = #{alignment VkDescriptorPoolInlineUniformBlockCreateInfo}

  peek ptr = 
    VkDescriptorPoolInlineUniformBlockCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxInlineUniformBlockBindings" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxInlineUniformBlockBindings" ptr val

instance Offset "sType" VkDescriptorPoolInlineUniformBlockCreateInfo where
  rawOffset = #{offset VkDescriptorPoolInlineUniformBlockCreateInfo, sType}

instance Offset "pNext" VkDescriptorPoolInlineUniformBlockCreateInfo where
  rawOffset = #{offset VkDescriptorPoolInlineUniformBlockCreateInfo, pNext}

instance Offset "maxInlineUniformBlockBindings" VkDescriptorPoolInlineUniformBlockCreateInfo where
  rawOffset = #{offset VkDescriptorPoolInlineUniformBlockCreateInfo, maxInlineUniformBlockBindings}

#else

module Vulkan.Types.Struct.VkDescriptorPoolInlineUniformBlockCreateInfo where

#endif