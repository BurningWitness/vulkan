{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_multi_draw

module Vulkan.Types.Struct.VkMultiDrawInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkMultiDrawInfoEXT" #-} VkMultiDrawInfoEXT =
       VkMultiDrawInfoEXT
         { firstVertex :: #{type uint32_t}
         , vertexCount :: #{type uint32_t}
         }

instance Storable VkMultiDrawInfoEXT where
  sizeOf    _ = #{size      struct VkMultiDrawInfoEXT}
  alignment _ = #{alignment struct VkMultiDrawInfoEXT}

  peek ptr = 
    VkMultiDrawInfoEXT
       <$> peek (offset @"firstVertex" ptr)
       <*> peek (offset @"vertexCount" ptr)

  poke ptr val = do
    pokeField @"firstVertex" ptr val
    pokeField @"vertexCount" ptr val

instance Offset "firstVertex" VkMultiDrawInfoEXT where
  rawOffset = #{offset struct VkMultiDrawInfoEXT, firstVertex}

instance Offset "vertexCount" VkMultiDrawInfoEXT where
  rawOffset = #{offset struct VkMultiDrawInfoEXT, vertexCount}

#else

module Vulkan.Types.Struct.VkMultiDrawInfoEXT where

#endif