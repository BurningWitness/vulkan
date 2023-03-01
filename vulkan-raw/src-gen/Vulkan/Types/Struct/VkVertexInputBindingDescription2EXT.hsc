{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_vertex_input_dynamic_state

module Vulkan.Types.Struct.VkVertexInputBindingDescription2EXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVertexInputRate



data {-# CTYPE "vulkan/vulkan.h" "VkVertexInputBindingDescription2EXT" #-} VkVertexInputBindingDescription2EXT =
       VkVertexInputBindingDescription2EXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , binding :: #{type uint32_t}
         , stride :: #{type uint32_t}
         , inputRate :: VkVertexInputRate
         , divisor :: #{type uint32_t}
         }

instance Storable VkVertexInputBindingDescription2EXT where
  sizeOf    _ = #{size      VkVertexInputBindingDescription2EXT}
  alignment _ = #{alignment VkVertexInputBindingDescription2EXT}

  peek ptr = 
    VkVertexInputBindingDescription2EXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"binding" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stride" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"inputRate" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"divisor" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"binding" ptr val
    pokeField @"stride" ptr val
    pokeField @"inputRate" ptr val
    pokeField @"divisor" ptr val

instance Offset "sType" VkVertexInputBindingDescription2EXT where
  rawOffset = #{offset VkVertexInputBindingDescription2EXT, sType}

instance Offset "pNext" VkVertexInputBindingDescription2EXT where
  rawOffset = #{offset VkVertexInputBindingDescription2EXT, pNext}

instance Offset "binding" VkVertexInputBindingDescription2EXT where
  rawOffset = #{offset VkVertexInputBindingDescription2EXT, binding}

instance Offset "stride" VkVertexInputBindingDescription2EXT where
  rawOffset = #{offset VkVertexInputBindingDescription2EXT, stride}

instance Offset "inputRate" VkVertexInputBindingDescription2EXT where
  rawOffset = #{offset VkVertexInputBindingDescription2EXT, inputRate}

instance Offset "divisor" VkVertexInputBindingDescription2EXT where
  rawOffset = #{offset VkVertexInputBindingDescription2EXT, divisor}

#else

module Vulkan.Types.Struct.VkVertexInputBindingDescription2EXT where

#endif