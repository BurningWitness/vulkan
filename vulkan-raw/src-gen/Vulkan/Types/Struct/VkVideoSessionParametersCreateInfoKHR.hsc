{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoSessionParametersCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoSessionParametersCreateFlagsKHR
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkVideoSessionParametersCreateInfoKHR" #-} VkVideoSessionParametersCreateInfoKHR =
       VkVideoSessionParametersCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkVideoSessionParametersCreateFlagsKHR
         , videoSessionParametersTemplate :: VkVideoSessionParametersKHR
         , videoSession :: VkVideoSessionKHR
         }

instance Storable VkVideoSessionParametersCreateInfoKHR where
  sizeOf    _ = #{size      struct VkVideoSessionParametersCreateInfoKHR}
  alignment _ = #{alignment struct VkVideoSessionParametersCreateInfoKHR}

  peek ptr = 
    VkVideoSessionParametersCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"videoSessionParametersTemplate" ptr)
       <*> peek (offset @"videoSession" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"videoSessionParametersTemplate" ptr val
    pokeField @"videoSession" ptr val

instance Offset "sType" VkVideoSessionParametersCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionParametersCreateInfoKHR, sType}

instance Offset "pNext" VkVideoSessionParametersCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionParametersCreateInfoKHR, pNext}

instance Offset "flags" VkVideoSessionParametersCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionParametersCreateInfoKHR, flags}

instance Offset "videoSessionParametersTemplate" VkVideoSessionParametersCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionParametersCreateInfoKHR, videoSessionParametersTemplate}

instance Offset "videoSession" VkVideoSessionParametersCreateInfoKHR where
  rawOffset = #{offset struct VkVideoSessionParametersCreateInfoKHR, videoSession}

#else

module Vulkan.Types.Struct.VkVideoSessionParametersCreateInfoKHR where

#endif