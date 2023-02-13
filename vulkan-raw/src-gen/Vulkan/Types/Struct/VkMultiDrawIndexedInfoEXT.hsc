{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_multi_draw

module Vulkan.Types.Struct.VkMultiDrawIndexedInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkMultiDrawIndexedInfoEXT" #-} VkMultiDrawIndexedInfoEXT =
       VkMultiDrawIndexedInfoEXT
         { firstIndex :: #{type uint32_t}
         , indexCount :: #{type uint32_t}
         , vertexOffset :: #{type int32_t}
         }

instance Storable VkMultiDrawIndexedInfoEXT where
  sizeOf    _ = #{size      VkMultiDrawIndexedInfoEXT}
  alignment _ = #{alignment VkMultiDrawIndexedInfoEXT}

  peek ptr = 
    VkMultiDrawIndexedInfoEXT
       <$> peek (offset @"firstIndex" ptr)
       <*> peek (offset @"indexCount" ptr)
       <*> peek (offset @"vertexOffset" ptr)

  poke ptr val = do
    pokeField @"firstIndex" ptr val
    pokeField @"indexCount" ptr val
    pokeField @"vertexOffset" ptr val

instance Offset "firstIndex" VkMultiDrawIndexedInfoEXT where
  rawOffset = #{offset VkMultiDrawIndexedInfoEXT, firstIndex}

instance Offset "indexCount" VkMultiDrawIndexedInfoEXT where
  rawOffset = #{offset VkMultiDrawIndexedInfoEXT, indexCount}

instance Offset "vertexOffset" VkMultiDrawIndexedInfoEXT where
  rawOffset = #{offset VkMultiDrawIndexedInfoEXT, vertexOffset}

#else

module Vulkan.Types.Struct.VkMultiDrawIndexedInfoEXT where

#endif