{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoProfileInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoChromaSubsamplingFlagsKHR
import Vulkan.Types.Enum.VkVideoCodecOperationFlagBitsKHR
import Vulkan.Types.Enum.VkVideoComponentBitDepthFlagsKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoProfileInfoKHR" #-} VkVideoProfileInfoKHR =
       VkVideoProfileInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , videoCodecOperation :: VkVideoCodecOperationFlagBitsKHR
         , chromaSubsampling :: VkVideoChromaSubsamplingFlagsKHR
         , lumaBitDepth :: VkVideoComponentBitDepthFlagsKHR
         , chromaBitDepth :: VkVideoComponentBitDepthFlagsKHR
         }

instance Storable VkVideoProfileInfoKHR where
  sizeOf    _ = #{size      VkVideoProfileInfoKHR}
  alignment _ = #{alignment VkVideoProfileInfoKHR}

  peek ptr = 
    VkVideoProfileInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"videoCodecOperation" ptr)
       <*> peek (offset @"chromaSubsampling" ptr)
       <*> peek (offset @"lumaBitDepth" ptr)
       <*> peek (offset @"chromaBitDepth" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"videoCodecOperation" ptr val
    pokeField @"chromaSubsampling" ptr val
    pokeField @"lumaBitDepth" ptr val
    pokeField @"chromaBitDepth" ptr val

instance Offset "sType" VkVideoProfileInfoKHR where
  rawOffset = #{offset VkVideoProfileInfoKHR, sType}

instance Offset "pNext" VkVideoProfileInfoKHR where
  rawOffset = #{offset VkVideoProfileInfoKHR, pNext}

instance Offset "videoCodecOperation" VkVideoProfileInfoKHR where
  rawOffset = #{offset VkVideoProfileInfoKHR, videoCodecOperation}

instance Offset "chromaSubsampling" VkVideoProfileInfoKHR where
  rawOffset = #{offset VkVideoProfileInfoKHR, chromaSubsampling}

instance Offset "lumaBitDepth" VkVideoProfileInfoKHR where
  rawOffset = #{offset VkVideoProfileInfoKHR, lumaBitDepth}

instance Offset "chromaBitDepth" VkVideoProfileInfoKHR where
  rawOffset = #{offset VkVideoProfileInfoKHR, chromaBitDepth}

#else

module Vulkan.Types.Struct.VkVideoProfileInfoKHR where

#endif