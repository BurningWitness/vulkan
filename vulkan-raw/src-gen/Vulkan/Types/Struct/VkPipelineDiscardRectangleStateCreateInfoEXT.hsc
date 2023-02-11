{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_discard_rectangles

module Vulkan.Types.Struct.VkPipelineDiscardRectangleStateCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDiscardRectangleModeEXT
import Vulkan.Types.Enum.VkPipelineDiscardRectangleStateCreateFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkRect2D



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineDiscardRectangleStateCreateInfoEXT" #-} VkPipelineDiscardRectangleStateCreateInfoEXT =
       VkPipelineDiscardRectangleStateCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineDiscardRectangleStateCreateFlagsEXT
         , discardRectangleMode :: VkDiscardRectangleModeEXT
         , discardRectangleCount :: #{type uint32_t}
         , pDiscardRectangles :: Ptr VkRect2D
         }

instance Storable VkPipelineDiscardRectangleStateCreateInfoEXT where
  sizeOf    _ = #{size      struct VkPipelineDiscardRectangleStateCreateInfoEXT}
  alignment _ = #{alignment struct VkPipelineDiscardRectangleStateCreateInfoEXT}

  peek ptr = 
    VkPipelineDiscardRectangleStateCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"discardRectangleMode" ptr)
       <*> peek (offset @"discardRectangleCount" ptr)
       <*> peek (offset @"pDiscardRectangles" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"discardRectangleMode" ptr val
    pokeField @"discardRectangleCount" ptr val
    pokeField @"pDiscardRectangles" ptr val

instance Offset "sType" VkPipelineDiscardRectangleStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineDiscardRectangleStateCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineDiscardRectangleStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineDiscardRectangleStateCreateInfoEXT, pNext}

instance Offset "flags" VkPipelineDiscardRectangleStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineDiscardRectangleStateCreateInfoEXT, flags}

instance Offset "discardRectangleMode" VkPipelineDiscardRectangleStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineDiscardRectangleStateCreateInfoEXT, discardRectangleMode}

instance Offset "discardRectangleCount" VkPipelineDiscardRectangleStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineDiscardRectangleStateCreateInfoEXT, discardRectangleCount}

instance Offset "pDiscardRectangles" VkPipelineDiscardRectangleStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineDiscardRectangleStateCreateInfoEXT, pDiscardRectangles}

#else

module Vulkan.Types.Struct.VkPipelineDiscardRectangleStateCreateInfoEXT where

#endif