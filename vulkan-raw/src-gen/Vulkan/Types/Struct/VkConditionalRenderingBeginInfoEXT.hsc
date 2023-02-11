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
  sizeOf    _ = #{size      struct VkConditionalRenderingBeginInfoEXT}
  alignment _ = #{alignment struct VkConditionalRenderingBeginInfoEXT}

  peek ptr = 
    VkConditionalRenderingBeginInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"buffer" ptr)
       <*> peek (offset @"offset" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"buffer" ptr val
    pokeField @"offset" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkConditionalRenderingBeginInfoEXT where
  rawOffset = #{offset struct VkConditionalRenderingBeginInfoEXT, sType}

instance Offset "pNext" VkConditionalRenderingBeginInfoEXT where
  rawOffset = #{offset struct VkConditionalRenderingBeginInfoEXT, pNext}

instance Offset "buffer" VkConditionalRenderingBeginInfoEXT where
  rawOffset = #{offset struct VkConditionalRenderingBeginInfoEXT, buffer}

instance Offset "offset" VkConditionalRenderingBeginInfoEXT where
  rawOffset = #{offset struct VkConditionalRenderingBeginInfoEXT, offset}

instance Offset "flags" VkConditionalRenderingBeginInfoEXT where
  rawOffset = #{offset struct VkConditionalRenderingBeginInfoEXT, flags}

#else

module Vulkan.Types.Struct.VkConditionalRenderingBeginInfoEXT where

#endif