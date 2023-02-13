{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_inline_uniform_block

module Vulkan.Types.Struct.VkDescriptorPoolInlineUniformBlockCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorPoolInlineUniformBlockCreateInfoEXT" #-} VkDescriptorPoolInlineUniformBlockCreateInfoEXT =
       VkDescriptorPoolInlineUniformBlockCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxInlineUniformBlockBindings :: #{type uint32_t}
         }

instance Storable VkDescriptorPoolInlineUniformBlockCreateInfoEXT where
  sizeOf    _ = #{size      VkDescriptorPoolInlineUniformBlockCreateInfoEXT}
  alignment _ = #{alignment VkDescriptorPoolInlineUniformBlockCreateInfoEXT}

  peek ptr = 
    VkDescriptorPoolInlineUniformBlockCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxInlineUniformBlockBindings" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxInlineUniformBlockBindings" ptr val

instance Offset "sType" VkDescriptorPoolInlineUniformBlockCreateInfoEXT where
  rawOffset = #{offset VkDescriptorPoolInlineUniformBlockCreateInfoEXT, sType}

instance Offset "pNext" VkDescriptorPoolInlineUniformBlockCreateInfoEXT where
  rawOffset = #{offset VkDescriptorPoolInlineUniformBlockCreateInfoEXT, pNext}

instance Offset "maxInlineUniformBlockBindings" VkDescriptorPoolInlineUniformBlockCreateInfoEXT where
  rawOffset = #{offset VkDescriptorPoolInlineUniformBlockCreateInfoEXT, maxInlineUniformBlockBindings}

#else

module Vulkan.Types.Struct.VkDescriptorPoolInlineUniformBlockCreateInfoEXT where

#endif