{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_line_rasterization

module Vulkan.Types.Struct.VkPipelineRasterizationLineStateCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkLineRasterizationModeEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineRasterizationLineStateCreateInfoEXT" #-} VkPipelineRasterizationLineStateCreateInfoEXT =
       VkPipelineRasterizationLineStateCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , lineRasterizationMode :: VkLineRasterizationModeEXT
         , stippledLineEnable :: VkBool32
         , lineStippleFactor :: #{type uint32_t}
         , lineStipplePattern :: #{type uint16_t}
         }

instance Storable VkPipelineRasterizationLineStateCreateInfoEXT where
  sizeOf    _ = #{size      struct VkPipelineRasterizationLineStateCreateInfoEXT}
  alignment _ = #{alignment struct VkPipelineRasterizationLineStateCreateInfoEXT}

  peek ptr = 
    VkPipelineRasterizationLineStateCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"lineRasterizationMode" ptr)
       <*> peek (offset @"stippledLineEnable" ptr)
       <*> peek (offset @"lineStippleFactor" ptr)
       <*> peek (offset @"lineStipplePattern" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"lineRasterizationMode" ptr val
    pokeField @"stippledLineEnable" ptr val
    pokeField @"lineStippleFactor" ptr val
    pokeField @"lineStipplePattern" ptr val

instance Offset "sType" VkPipelineRasterizationLineStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRasterizationLineStateCreateInfoEXT, sType}

instance Offset "pNext" VkPipelineRasterizationLineStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRasterizationLineStateCreateInfoEXT, pNext}

instance Offset "lineRasterizationMode" VkPipelineRasterizationLineStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRasterizationLineStateCreateInfoEXT, lineRasterizationMode}

instance Offset "stippledLineEnable" VkPipelineRasterizationLineStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRasterizationLineStateCreateInfoEXT, stippledLineEnable}

instance Offset "lineStippleFactor" VkPipelineRasterizationLineStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRasterizationLineStateCreateInfoEXT, lineStippleFactor}

instance Offset "lineStipplePattern" VkPipelineRasterizationLineStateCreateInfoEXT where
  rawOffset = #{offset struct VkPipelineRasterizationLineStateCreateInfoEXT, lineStipplePattern}

#else

module Vulkan.Types.Struct.VkPipelineRasterizationLineStateCreateInfoEXT where

#endif