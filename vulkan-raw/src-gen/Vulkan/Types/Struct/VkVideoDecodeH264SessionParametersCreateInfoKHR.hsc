{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_decode_h264

module Vulkan.Types.Struct.VkVideoDecodeH264SessionParametersCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkVideoDecodeH264SessionParametersAddInfoKHR



data {-# CTYPE "vulkan/vulkan.h" "VkVideoDecodeH264SessionParametersCreateInfoKHR" #-} VkVideoDecodeH264SessionParametersCreateInfoKHR =
       VkVideoDecodeH264SessionParametersCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxStdSPSCount :: #{type uint32_t}
         , maxStdPPSCount :: #{type uint32_t}
         , pParametersAddInfo :: Ptr VkVideoDecodeH264SessionParametersAddInfoKHR
         }

instance Storable VkVideoDecodeH264SessionParametersCreateInfoKHR where
  sizeOf    _ = #{size      VkVideoDecodeH264SessionParametersCreateInfoKHR}
  alignment _ = #{alignment VkVideoDecodeH264SessionParametersCreateInfoKHR}

  peek ptr = 
    VkVideoDecodeH264SessionParametersCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxStdSPSCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxStdPPSCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pParametersAddInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxStdSPSCount" ptr val
    pokeField @"maxStdPPSCount" ptr val
    pokeField @"pParametersAddInfo" ptr val

instance Offset "sType" VkVideoDecodeH264SessionParametersCreateInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264SessionParametersCreateInfoKHR, sType}

instance Offset "pNext" VkVideoDecodeH264SessionParametersCreateInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264SessionParametersCreateInfoKHR, pNext}

instance Offset "maxStdSPSCount" VkVideoDecodeH264SessionParametersCreateInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264SessionParametersCreateInfoKHR, maxStdSPSCount}

instance Offset "maxStdPPSCount" VkVideoDecodeH264SessionParametersCreateInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264SessionParametersCreateInfoKHR, maxStdPPSCount}

instance Offset "pParametersAddInfo" VkVideoDecodeH264SessionParametersCreateInfoKHR where
  rawOffset = #{offset VkVideoDecodeH264SessionParametersCreateInfoKHR, pParametersAddInfo}

#else

module Vulkan.Types.Struct.VkVideoDecodeH264SessionParametersCreateInfoKHR where

#endif