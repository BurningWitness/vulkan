{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_vertex_attribute_divisor

module Vulkan.Types.Struct.VkVertexInputBindingDivisorDescriptionEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkVertexInputBindingDivisorDescriptionEXT" #-} VkVertexInputBindingDivisorDescriptionEXT =
       VkVertexInputBindingDivisorDescriptionEXT
         { binding :: #{type uint32_t}
         , divisor :: #{type uint32_t}
         }

instance Storable VkVertexInputBindingDivisorDescriptionEXT where
  sizeOf    _ = #{size      VkVertexInputBindingDivisorDescriptionEXT}
  alignment _ = #{alignment VkVertexInputBindingDivisorDescriptionEXT}

  peek ptr = 
    VkVertexInputBindingDivisorDescriptionEXT
       <$> peek (Foreign.Storable.Offset.offset @"binding" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"divisor" ptr)

  poke ptr val = do
    pokeField @"binding" ptr val
    pokeField @"divisor" ptr val

instance Offset "binding" VkVertexInputBindingDivisorDescriptionEXT where
  rawOffset = #{offset VkVertexInputBindingDivisorDescriptionEXT, binding}

instance Offset "divisor" VkVertexInputBindingDivisorDescriptionEXT where
  rawOffset = #{offset VkVertexInputBindingDivisorDescriptionEXT, divisor}

#else

module Vulkan.Types.Struct.VkVertexInputBindingDivisorDescriptionEXT where

#endif