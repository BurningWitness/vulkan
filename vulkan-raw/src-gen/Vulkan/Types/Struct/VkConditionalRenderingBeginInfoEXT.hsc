{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_conditional_rendering

module Vulkan.Types.Struct.VkConditionalRenderingBeginInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkConditionalRenderingFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkConditionalRenderingBeginInfoEXT" #-} VkConditionalRenderingBeginInfoEXT =
       VkConditionalRenderingBeginInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , buffer :: VkBuffer
         , offset :: VkDeviceSize
         , flags :: VkConditionalRenderingFlagsEXT
         }

instance Storable VkConditionalRenderingBeginInfoEXT where
  sizeOf    _ = #{size      VkConditionalRenderingBeginInfoEXT}
  alignment _ = #{alignment VkConditionalRenderingBeginInfoEXT}

  peek ptr = 
    VkConditionalRenderingBeginInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"buffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"offset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"buffer" ptr val
    pokeField @"offset" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkConditionalRenderingBeginInfoEXT where
  rawOffset = #{offset VkConditionalRenderingBeginInfoEXT, sType}

instance Offset "pNext" VkConditionalRenderingBeginInfoEXT where
  rawOffset = #{offset VkConditionalRenderingBeginInfoEXT, pNext}

instance Offset "buffer" VkConditionalRenderingBeginInfoEXT where
  rawOffset = #{offset VkConditionalRenderingBeginInfoEXT, buffer}

instance Offset "offset" VkConditionalRenderingBeginInfoEXT where
  rawOffset = #{offset VkConditionalRenderingBeginInfoEXT, offset}

instance Offset "flags" VkConditionalRenderingBeginInfoEXT where
  rawOffset = #{offset VkConditionalRenderingBeginInfoEXT, flags}

#else

module Vulkan.Types.Struct.VkConditionalRenderingBeginInfoEXT where

#endif