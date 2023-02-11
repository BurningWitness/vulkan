{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_optical_flow

module Vulkan.Types.Struct.VkOpticalFlowSessionCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkOpticalFlowGridSizeFlagsNV
import Vulkan.Types.Enum.VkOpticalFlowPerformanceLevelNV
import Vulkan.Types.Enum.VkOpticalFlowSessionCreateFlagsNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkOpticalFlowSessionCreateInfoNV" #-} VkOpticalFlowSessionCreateInfoNV =
       VkOpticalFlowSessionCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , width :: #{type uint32_t}
         , height :: #{type uint32_t}
         , imageFormat :: VkFormat
         , flowVectorFormat :: VkFormat
         , costFormat :: VkFormat
         , outputGridSize :: VkOpticalFlowGridSizeFlagsNV
         , hintGridSize :: VkOpticalFlowGridSizeFlagsNV
         , performanceLevel :: VkOpticalFlowPerformanceLevelNV
         , flags :: VkOpticalFlowSessionCreateFlagsNV
         }

instance Storable VkOpticalFlowSessionCreateInfoNV where
  sizeOf    _ = #{size      struct VkOpticalFlowSessionCreateInfoNV}
  alignment _ = #{alignment struct VkOpticalFlowSessionCreateInfoNV}

  peek ptr = 
    VkOpticalFlowSessionCreateInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"width" ptr)
       <*> peek (offset @"height" ptr)
       <*> peek (offset @"imageFormat" ptr)
       <*> peek (offset @"flowVectorFormat" ptr)
       <*> peek (offset @"costFormat" ptr)
       <*> peek (offset @"outputGridSize" ptr)
       <*> peek (offset @"hintGridSize" ptr)
       <*> peek (offset @"performanceLevel" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"width" ptr val
    pokeField @"height" ptr val
    pokeField @"imageFormat" ptr val
    pokeField @"flowVectorFormat" ptr val
    pokeField @"costFormat" ptr val
    pokeField @"outputGridSize" ptr val
    pokeField @"hintGridSize" ptr val
    pokeField @"performanceLevel" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkOpticalFlowSessionCreateInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreateInfoNV, sType}

instance Offset "pNext" VkOpticalFlowSessionCreateInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreateInfoNV, pNext}

instance Offset "width" VkOpticalFlowSessionCreateInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreateInfoNV, width}

instance Offset "height" VkOpticalFlowSessionCreateInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreateInfoNV, height}

instance Offset "imageFormat" VkOpticalFlowSessionCreateInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreateInfoNV, imageFormat}

instance Offset "flowVectorFormat" VkOpticalFlowSessionCreateInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreateInfoNV, flowVectorFormat}

instance Offset "costFormat" VkOpticalFlowSessionCreateInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreateInfoNV, costFormat}

instance Offset "outputGridSize" VkOpticalFlowSessionCreateInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreateInfoNV, outputGridSize}

instance Offset "hintGridSize" VkOpticalFlowSessionCreateInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreateInfoNV, hintGridSize}

instance Offset "performanceLevel" VkOpticalFlowSessionCreateInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreateInfoNV, performanceLevel}

instance Offset "flags" VkOpticalFlowSessionCreateInfoNV where
  rawOffset = #{offset struct VkOpticalFlowSessionCreateInfoNV, flags}

#else

module Vulkan.Types.Struct.VkOpticalFlowSessionCreateInfoNV where

#endif